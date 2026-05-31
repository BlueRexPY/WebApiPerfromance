import re

with open("apps/RustActix/src/main.rs", "r") as f:
    src = f.read()

# adding grpc + sse + futures imports
# find first use
imports = """
use std::future::Future;
pub mod api {
    tonic::include_proto!("api");
}
use api::api_service_server::{ApiService, ApiServiceServer};
use tonic::{Request, Response as TonicResponse, Status};
"""
src = src.replace('use actix_web::{', imports + '\nuse actix_web::{')

grpc_impl = """
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
"""

sse_handlers = """
#[get("/sse/hello")]
async fn sse_hello() -> impl Responder {
    HttpResponse::Ok()
        .content_type("text/event-stream")
        .append_header(("Cache-Control", "no-cache"))
        .append_header(("Connection", "keep-alive"))
        .body("data: {\\\"message\\\":\\\"Hello, World!\\\"}\\n\\n")
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
        chunks.push_str(&format!("data: {}\\n\\n", serde_json::to_string(&o).unwrap()));
    }
    HttpResponse::Ok()
        .content_type("text/event-stream")
        .append_header(("Cache-Control", "no-cache"))
        .append_header(("Connection", "keep-alive"))
        .body(chunks)
}
"""

src = src.replace('struct AppState {', grpc_impl + '\n' + sse_handlers + '\nstruct AppState {')

src = src.replace('.service(get_orders)', '.service(get_orders).service(sse_hello).service(sse_orders)')

grpc_start = """
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
"""
src = src.replace('println!("Starting server', grpc_start + '\n\tprintln!("Starting server')

with open("apps/RustActix/src/main.rs", "w") as f:
    f.write(src)
print("RustActix main.rs patched")
