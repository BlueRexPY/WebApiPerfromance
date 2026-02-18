package com.performance.javaspringbootapi.controller;

import com.performance.javaspringbootapi.model.HelloResponse;
import com.performance.javaspringbootapi.model.Order;
import org.springframework.r2dbc.core.DatabaseClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

import java.time.LocalDateTime;

@RestController
public class ApiController {

    private final DatabaseClient db;
    private static final Mono<HelloResponse> HELLO = Mono.just(new HelloResponse());

    public ApiController(DatabaseClient db) {
        this.db = db;
    }

    @GetMapping("/")
    public Mono<HelloResponse> hello() {
        return HELLO;
    }

    @GetMapping("/orders")
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
}
