import re

with open("apps/RustAxum/src/main.rs", "r") as f:
    src = f.read()

imports = """
use axum::response::Response;
use axum::body::Body;
use axum::http::header;

pub mod api {
    tonic::include_proto!("api");
}
use api::api_service_server::{ApiService, ApiServiceServer};
use tonic::{Request, Response as TonicResponse, Status};
"""
src = src.replace('use axum::{', imports + '\nuse axum::{')

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
async fn sse_hello() -> impl IntoResponse {
    Response::builder()
        .header(header::CONTENT_TYPE, "text/event-stream")
        .header(header::CACHE_CONTROL, "no-cache")
        .header(header::CONNECTION, "keep-alive")
        .body(Body::from("data: {\\\"message\\\":\\\"Hello, World!\\\"}\\n\\n"))
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
        chunks.push_str(&format!("data: {}\\n\\n", serde_json::to_string(&o).unwrap()));
    }
    
    Response::builder()
        .header(header::CONTENT_TYPE, "text/event-stream")
        .header(header::CACHE_CONTROL, "no-cache")
        .header(header::CONNECTION, "keep-alive")
        .body(Body::from(chunks))
        .unwrap()
}
"""

src = src.replace('struct AppState {', grpc_impl + '\n' + sse_handlers + '\nstruct AppState {')

src = src.replace('.route("/orders", get(get_orders))', '.route("/orders", get(get_orders)).route("/sse/hello", get(sse_hello)).route("/sse/orders", get(sse_orders))')

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

with open("apps/RustAxum/src/main.rs", "w") as f:
    f.write(src)
print("RustAxum main.rs patched")
