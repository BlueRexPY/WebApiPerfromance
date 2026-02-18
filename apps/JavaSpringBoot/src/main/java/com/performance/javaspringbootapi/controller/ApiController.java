package com.performance.javaspringbootapi.controller;

import com.performance.javaspringbootapi.model.HelloResponse;
import com.performance.javaspringbootapi.model.Order;
import io.r2dbc.spi.Row;
import io.r2dbc.spi.RowMetadata;
import org.springframework.r2dbc.core.DatabaseClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

import java.time.LocalDateTime;

@RestController
public class ApiController {

    private final DatabaseClient databaseClient;
    private static final HelloResponse HELLO_RESPONSE = new HelloResponse();

    public ApiController(DatabaseClient databaseClient) {
        this.databaseClient = databaseClient;
    }

    @GetMapping("/")
    public Mono<HelloResponse> hello() {
        return Mono.just(HELLO_RESPONSE);
    }

    @GetMapping("/orders")
    public Flux<Order> getOrders() {
        return databaseClient
            .sql("SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT 100 OFFSET 1000")
            .map(this::mapRowToOrder)
            .all();
    }

    private Order mapRowToOrder(Row row, RowMetadata metadata) {
        return new Order(
            row.get("id", Integer.class),
            row.get("customer_id", Integer.class),
            row.get("total_cents", Integer.class),
            row.get("status", String.class),
            row.get("created_at", LocalDateTime.class)
        );
    }
}
