
use std::future::Future;
pub mod api {
    tonic::include_proto!("api");
}
use api::api_service_server::{ApiService, ApiServiceServer};
use tonic::{Request, Response as TonicResponse, Status};

use actix_web::{get, web, App, HttpRequest, HttpResponse, HttpServer, Responder};
use actix_ws::Message;
use chrono::NaiveDateTime;
use deadpool_postgres::{Config, ManagerConfig, Pool, RecyclingMethod, Runtime};
use serde::{Deserialize, Serialize};
use std::env;
use tokio_postgres::NoTls;

#[derive(Serialize)]
struct HelloResponse {
    message: String,
}

#[derive(Serialize, Deserialize)]
struct Order {
    id: i32,
    customer_id: i32,
    total_cents: i32,
    status: String,
    created_at: NaiveDateTime,
}


pub struct ApiServerImpl {
    pub pool: deadpool_postgres::Pool,
}

#[tonic::async_trait]
impl ApiService for ApiServerImpl {
    async fn say_hello(&self, _req: Request<api::HelloRequest>) -> Result<TonicResponse<api::HelloReply>, Status> {
        Ok(TonicResponse::new(api::HelloReply {
            message: "Hello, World!".to_string(),
        }))
    }

    async fn get_orders(&self, _req: Request<api::GetOrdersRequest>) -> Result<TonicResponse<api::GetOrdersReply>, Status> {
        let client = self.pool.get().await.map_err(|_| Status::internal("DB error"))?;
        let stmt = client.prepare_cached("SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT 100 OFFSET 1000").await.map_err(|_| Status::internal("DB error"))?;
        let rows = client.query(&stmt, &[]).await.map_err(|_| Status::internal("DB error"))?;
        
        let orders = rows.iter().map(|row| api::Order {
            id: row.get(0),
            customer_id: row.get(1),
            total_cents: row.get(2),
            status: row.get(3),
            created_at: row.get::<usize, chrono::NaiveDateTime>(4).format("%Y-%m-%dT%H:%M:%S").to_string(),
        }).collect();
        
        Ok(TonicResponse::new(api::GetOrdersReply { orders }))
    }
}


#[get("/sse/hello")]
async fn sse_hello() -> impl Responder {
    HttpResponse::Ok()
        .content_type("text/event-stream")
        .append_header(("Cache-Control", "no-cache"))
        .append_header(("Connection", "keep-alive"))
        .body("data: {\"message\":\"Hello, World!\"}\n\n")
}

#[get("/sse/orders")]
async fn sse_orders(data: web::Data<AppState>) -> impl Responder {
    let client = match data.pool.get().await {
        Ok(client) => client,
        Err(_) => return HttpResponse::InternalServerError().finish(),
    };
    let stmt = match client.prepare_cached("SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT 100 OFFSET 1000").await {
        Ok(stmt) => stmt,
        Err(_) => return HttpResponse::InternalServerError().finish(),
    };
    let rows = match client.query(&stmt, &[]).await {
        Ok(rows) => rows,
        Err(_) => return HttpResponse::InternalServerError().finish(),
    };
    let mut chunks = String::new();
    for row in rows {
        let o = Order { id: row.get(0), customer_id: row.get(1), total_cents: row.get(2), status: row.get(3), created_at: row.get(4) };
        chunks.push_str(&format!("data: {}\n\n", serde_json::to_string(&o).unwrap()));
    }
    HttpResponse::Ok()
        .content_type("text/event-stream")
        .append_header(("Cache-Control", "no-cache"))
        .append_header(("Connection", "keep-alive"))
        .body(chunks)
}

struct AppState {
    pool: Pool,
}

#[get("/")]
async fn hello() -> impl Responder {
    HttpResponse::Ok().json(HelloResponse {
        message: "Hello, World!".to_string(),
    })
}

#[get("/orders")]
async fn get_orders(data: web::Data<AppState>) -> impl Responder {
    let client = match data.pool.get().await {
        Ok(client) => client,
        Err(_) => return HttpResponse::InternalServerError().finish(),
    };

    let stmt = match client
        .prepare_cached(
            "SELECT id, customer_id, total_cents, status, created_at 
             FROM orders 
             LIMIT $1
             OFFSET $2",
        )
        .await
    {
        Ok(stmt) => stmt,
        Err(_) => return HttpResponse::InternalServerError().finish(),
    };

    let rows = match client.query(&stmt, &[&100i64, &1000i64]).await {
        Ok(rows) => rows,
        Err(_) => return HttpResponse::InternalServerError().finish(),
    };

    let orders: Vec<Order> = rows
        .iter()
        .map(|row| Order {
            id: row.get(0),
            customer_id: row.get(1),
            total_cents: row.get(2),
            status: row.get(3),
            created_at: row.get(4),
        })
        .collect();

    HttpResponse::Ok().json(orders)
}

fn get_database_url() -> String {
    env::var("DATABASE_URL").expect("DATABASE_URL must be set")
}

async fn ws_echo(
    req: HttpRequest,
    stream: web::Payload,
) -> Result<HttpResponse, actix_web::Error> {
    let (res, mut session, mut msg_stream) = actix_ws::handle(&req, stream)?;
    actix_web::rt::spawn(async move {
        while let Some(Ok(msg)) = msg_stream.recv().await {
            match msg {
                Message::Text(text) => {
                    if session.text(text).await.is_err() {
                        break;
                    }
                }
                Message::Binary(bin) => {
                    if session.binary(bin).await.is_err() {
                        break;
                    }
                }
                Message::Close(reason) => {
                    let _ = session.close(reason).await;
                    break;
                }
                _ => {}
            }
        }
    });
    Ok(res)
}

async fn ws_orders(
    req: HttpRequest,
    stream: web::Payload,
    data: web::Data<AppState>,
) -> Result<HttpResponse, actix_web::Error> {
    let (res, mut session, mut msg_stream) = actix_ws::handle(&req, stream)?;
    let pool = data.pool.clone();
    actix_web::rt::spawn(async move {
        while let Some(Ok(msg)) = msg_stream.recv().await {
            match msg {
                Message::Text(_) | Message::Binary(_) => {}
                Message::Close(reason) => {
                    let _ = session.close(reason).await;
                    break;
                }
                _ => continue,
            }
            let client = match pool.get().await {
                Ok(c) => c,
                Err(_) => break,
            };
            let stmt = match client
                .prepare_cached(
                    "SELECT id, customer_id, total_cents, status, created_at \
                     FROM orders LIMIT $1 OFFSET $2",
                )
                .await
            {
                Ok(s) => s,
                Err(_) => break,
            };
            let rows = match client.query(&stmt, &[&100i64, &1000i64]).await {
                Ok(r) => r,
                Err(_) => break,
            };
            let orders: Vec<Order> = rows
                .iter()
                .map(|row| Order {
                    id: row.get(0),
                    customer_id: row.get(1),
                    total_cents: row.get(2),
                    status: row.get(3),
                    created_at: row.get(4),
                })
                .collect();
            let json = serde_json::to_string(&orders).unwrap_or_default();
            if session.text(json).await.is_err() {
                break;
            }
        }
    });
    Ok(res)
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    dotenv::dotenv().ok();

    let database_url = get_database_url();
    
    let mut cfg = Config::new();
    cfg.url = Some(database_url);
    cfg.manager = Some(ManagerConfig {
        recycling_method: RecyclingMethod::Fast,
    });
    cfg.pool = Some(deadpool_postgres::PoolConfig::new(120));

    let pool = cfg
        .create_pool(Some(Runtime::Tokio1), NoTls)
        .expect("Failed to create pool");

    // Warm up the connection pool
    for _ in 0..10 {
        let _ = pool.get().await;
    }

    let app_state = web::Data::new(AppState { pool: pool.clone() });

    
    let grpc_pool = pool.clone();
    tokio::spawn(async move {
        let addr = "0.0.0.0:9000".parse().unwrap();
        let svc = ApiServerImpl { pool: grpc_pool };
        tonic::transport::Server::builder()
            .add_service(ApiServiceServer::new(svc))
            .serve(addr)
            .await
            .unwrap();
    });

	println!("Starting server on 0.0.0.0:8000");

    HttpServer::new(move || {
        App::new()
            .app_data(app_state.clone())
            .service(hello)
            .service(get_orders).service(sse_hello).service(sse_orders)
            .route("/ws/echo", web::get().to(ws_echo))
            .route("/ws/orders", web::get().to(ws_orders))
    })
    .bind("0.0.0.0:8000")?
    // workers() not set → Actix defaults to std::thread::available_parallelism() (= num logical CPUs)
    .run()
    .await
}
