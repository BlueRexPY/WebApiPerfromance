package com.performance.javaspringbootapi.controller;

import com.performance.javaspringbootapi.model.HelloResponse;
import com.performance.javaspringbootapi.model.Order;
import org.springframework.data.mongodb.core.ReactiveMongoOperations;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.r2dbc.core.DatabaseClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

import java.time.LocalDateTime;

@RestController
public class ApiController {

    private final DatabaseClient db;
    private final ReactiveMongoOperations mongoOps;

    public ApiController(DatabaseClient db, ReactiveMongoOperations mongoOps) {
        this.db = db;
        this.mongoOps = mongoOps;
    }

    @GetMapping("/")
    public Mono<HelloResponse> hello() {
        return Mono.just(new HelloResponse());
    }

    @GetMapping("/postgresql/orders")
    public Flux<Order> getOrders() {
        return db.sql("SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT 100 OFFSET 1000")
            .map(row -> new Order(
                row.get("id", Integer.class),
                row.get("customer_id", Integer.class),
                row.get("total_cents", Integer.class),
                row.get("status", String.class),
                row.get("created_at", LocalDateTime.class)
            ))
            .all();
    }

    @GetMapping("/mongodb/orders")
    public Flux<Order> getMongoOrders() {
        Query query = new Query().skip(1000).limit(100);
        query.fields().exclude("_id");
        return mongoOps.find(query, Order.class, "orders");
    }
}
