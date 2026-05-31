
use axum::response::Response;
use axum::body::Body;
use axum::http::header;

pub mod api {
    tonic::include_proto!("api");
}
use api::api_service_server::{ApiService, ApiServiceServer};
use tonic::{Request, Response as TonicResponse, Status};

use axum::{
    extract::{
        ws::{Message, WebSocket, WebSocketUpgrade},
        State,
    },
    response::IntoResponse,
    routing::get,
    Json, Router,
};
use chrono::NaiveDateTime;
use deadpool_postgres::{Config, ManagerConfig, Pool, RecyclingMethod, Runtime};
use serde::{Deserialize, Serialize};
use std::{env, sync::Arc};
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


async fn sse_hello() -> impl IntoResponse {
    Response::builder()
        .header(header::CONTENT_TYPE, "text/event-stream")
        .header(header::CACHE_CONTROL, "no-cache")
        .header(header::CONNECTION, "keep-alive")
        .body(Body::from("data: {\"message\":\"Hello, World!\"}\n\n"))
        .unwrap()
}

async fn sse_orders(State(state): State<Arc<AppState>>) -> impl IntoResponse {
    let client = match state.pool.get().await {
        Ok(client) => client,
        Err(_) => return Response::builder().status(500).body(Body::empty()).unwrap(),
    };
    let stmt = match client.prepare_cached("SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT 100 OFFSET 1000").await {
        Ok(stmt) => stmt,
        Err(_) => return Response::builder().status(500).body(Body::empty()).unwrap(),
    };
    let rows = match client.query(&stmt, &[]).await {
        Ok(rows) => rows,
        Err(_) => return Response::builder().status(500).body(Body::empty()).unwrap(),
    };
    
    let mut chunks = String::new();
    for row in rows {
        let o = Order { id: row.get(0), customer_id: row.get(1), total_cents: row.get(2), status: row.get(3), created_at: row.get(4) };
        chunks.push_str(&format!("data: {}\n\n", serde_json::to_string(&o).unwrap()));
    }
    
    Response::builder()
        .header(header::CONTENT_TYPE, "text/event-stream")
        .header(header::CACHE_CONTROL, "no-cache")
        .header(header::CONNECTION, "keep-alive")
        .body(Body::from(chunks))
        .unwrap()
}

struct AppState {
    pool: Pool,
}

async fn hello() -> Json<HelloResponse> {
    Json(HelloResponse {
        message: "Hello, World!".to_string(),
    })
}

async fn get_orders(
    State(state): State<Arc<AppState>>,
) -> Result<Json<Vec<Order>>, axum::http::StatusCode> {
    let client = state
        .pool
        .get()
        .await
        .map_err(|_| axum::http::StatusCode::INTERNAL_SERVER_ERROR)?;

    let stmt = client
        .prepare_cached(
            "SELECT id, customer_id, total_cents, status, created_at \
             FROM orders LIMIT $1 OFFSET $2",
        )
        .await
        .map_err(|_| axum::http::StatusCode::INTERNAL_SERVER_ERROR)?;

    let rows = client
        .query(&stmt, &[&100i64, &1000i64])
        .await
        .map_err(|_| axum::http::StatusCode::INTERNAL_SERVER_ERROR)?;

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

    Ok(Json(orders))
}

async fn ws_echo(ws: WebSocketUpgrade) -> impl IntoResponse {
    ws.on_upgrade(handle_ws_echo)
}

async fn handle_ws_echo(mut socket: WebSocket) {
    while let Some(Ok(msg)) = socket.recv().await {
        match &msg {
            Message::Close(_) => break,
            _ => {
                if socket.send(msg).await.is_err() {
                    break;
                }
            }
        }
    }
}

async fn ws_orders(
    ws: WebSocketUpgrade,
    State(state): State<Arc<AppState>>,
) -> impl IntoResponse {
    ws.on_upgrade(|socket| handle_ws_orders(socket, state))
}

async fn handle_ws_orders(mut socket: WebSocket, state: Arc<AppState>) {
    while let Some(Ok(msg)) = socket.recv().await {
        match msg {
            Message::Close(_) => break,
            _ => {}
        }
        let client = match state.pool.get().await {
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
        if socket.send(Message::Text(json)).await.is_err() {
            break;
        }
    }
}

#[tokio::main]
async fn main() {
    dotenv::dotenv().ok();

    let database_url = env::var("DATABASE_URL").expect("DATABASE_URL must be set");

    let mut cfg = Config::new();
    cfg.url = Some(database_url);
    cfg.manager = Some(ManagerConfig {
        recycling_method: RecyclingMethod::Fast,
    });
    cfg.pool = Some(deadpool_postgres::PoolConfig::new(120));

    let pool = cfg
        .create_pool(Some(Runtime::Tokio1), NoTls)
        .expect("Failed to create pool");

    // Warm up connections
    for _ in 0..10 {
        let _ = pool.get().await;
    }

    let state = Arc::new(AppState { pool: pool.clone() });

    let app = Router::new()
        .route("/", get(hello))
        .route("/orders", get(get_orders)).route("/sse/hello", get(sse_hello)).route("/sse/orders", get(sse_orders))
        .route("/ws/echo", get(ws_echo))
        .route("/ws/orders", get(ws_orders))
        .with_state(state);

    let listener = tokio::net::TcpListener::bind("0.0.0.0:8000")
        .await
        .expect("Failed to bind");

    
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
    axum::serve(listener, app).await.expect("Server error");
}
