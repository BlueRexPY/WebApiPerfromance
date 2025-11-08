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

    private final DatabaseClient databaseClient;

    public ApiController(DatabaseClient databaseClient) {
        this.databaseClient = databaseClient;
    }

    @GetMapping("/")
    public Mono<HelloResponse> hello() {
        return Mono.just(new HelloResponse());
    }

    @GetMapping("/orders")
    public Flux<Order> getOrders() {
        String query = """
            SELECT id, customer_id, total_cents, status, created_at
            FROM orders
            LIMIT :limit
            OFFSET :offset
            """;

        return databaseClient.sql(query)
            .bind("limit", 100)
            .bind("offset", 1000)
            .map((row, metadata) -> new Order(
                row.get("id", Integer.class),
                row.get("customer_id", Integer.class),
                row.get("total_cents", Integer.class),
                row.get("status", String.class),
                row.get("created_at", LocalDateTime.class)
            ))
            .all();
    }
}
