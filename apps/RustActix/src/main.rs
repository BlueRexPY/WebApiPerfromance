use actix_web::{get, web, App, HttpResponse, HttpServer, Responder};
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

    let app_state = web::Data::new(AppState { pool });

    println!("Starting server on 0.0.0.0:8000");

    HttpServer::new(move || {
        App::new()
            .app_data(app_state.clone())
            .service(hello)
            .service(get_orders)
    })
    .bind("0.0.0.0:8000")?
    .workers(14)
    .run()
    .await
}
