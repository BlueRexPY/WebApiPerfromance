pub mod api {
    tonic::include_proto!("api");
}
use api::api_service_server::{ApiService, ApiServiceServer};
use tonic::{Request, Response as TonicResponse, Status};

use chrono::NaiveDateTime;
use deadpool_postgres::{Config, ManagerConfig, Pool, RecyclingMethod, Runtime};
use serde::Serialize;
use std::{env, sync::Arc};
use warp::Filter;

#[derive(Serialize)]
struct HelloResponse {
    message: String,
}

#[derive(Serialize)]
struct Order {
    id: i32,
    customer_id: i32,
    total_cents: i32,
    status: String,
    created_at: NaiveDateTime,
}

pub struct ApiServerImpl {
    pub pool: Pool,
}

#[tonic::async_trait]
impl ApiService for ApiServerImpl {
    async fn say_hello(
        &self,
        _req: Request<api::HelloRequest>,
    ) -> Result<TonicResponse<api::HelloReply>, Status> {
        Ok(TonicResponse::new(api::HelloReply {
            message: "Hello, World!".to_string(),
        }))
    }

    async fn get_orders(
        &self,
        _req: Request<api::GetOrdersRequest>,
    ) -> Result<TonicResponse<api::GetOrdersReply>, Status> {
        let client = self
            .pool
            .get()
            .await
            .map_err(|_| Status::internal("DB error"))?;
        let stmt = client
            .prepare_cached(
                "SELECT id, customer_id, total_cents, status, created_at \
                 FROM orders LIMIT 100 OFFSET 1000",
            )
            .await
            .map_err(|_| Status::internal("DB error"))?;
        let rows = client
            .query(&stmt, &[])
            .await
            .map_err(|_| Status::internal("DB error"))?;

        let orders = rows
            .iter()
            .map(|row| api::Order {
                id: row.get(0),
                customer_id: row.get(1),
                total_cents: row.get(2),
                status: row.get(3),
                created_at: row
                    .get::<usize, chrono::NaiveDateTime>(4)
                    .format("%Y-%m-%dT%H:%M:%S")
                    .to_string(),
            })
            .collect();

        Ok(TonicResponse::new(api::GetOrdersReply { orders }))
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
        .create_pool(Some(Runtime::Tokio1), tokio_postgres::NoTls)
        .expect("Failed to create pool");

    for _ in 0..10 {
        let _ = pool.get().await;
    }

    // Spawn gRPC server
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

    let pool_filter = warp::any().map(move || pool.clone());

    let hello = warp::path::end().map(|| {
        warp::reply::json(&HelloResponse {
            message: "Hello, World!".to_string(),
        })
    });

    let orders = warp::path("orders")
        .and(warp::get())
        .and(pool_filter.clone())
        .and_then(|pool: Pool| async move {
            let client = match pool.get().await {
                Ok(c) => c,
                Err(_) => {
                    return Err(warp::reject::custom(DbError));
                }
            };
            let stmt = match client
                .prepare_cached(
                    "SELECT id, customer_id, total_cents, status, created_at \
                     FROM orders LIMIT $1 OFFSET $2",
                )
                .await
            {
                Ok(s) => s,
                Err(_) => return Err(warp::reject::custom(DbError)),
            };
            let rows = match client.query(&stmt, &[&100i64, &1000i64]).await {
                Ok(r) => r,
                Err(_) => return Err(warp::reject::custom(DbError)),
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
            Ok(warp::reply::json(&orders))
        });

    let routes = hello.or(orders).recover(handle_rejection);

    println!("Starting server on 0.0.0.0:8000");
    warp::serve(routes).run(([0, 0, 0, 0], 8000)).await;
}

#[derive(Debug)]
struct DbError;
impl warp::reject::Reject for DbError {}

async fn handle_rejection(
    err: warp::Rejection,
) -> Result<impl warp::Reply, std::convert::Infallible> {
    Ok(warp::reply::with_status(
        "Internal Server Error",
        warp::http::StatusCode::INTERNAL_SERVER_ERROR,
    ))
}
