package com.performance.javamicronaut;

import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;
import io.micronaut.r2dbc.annotation.R2dbcRepository;
import io.r2dbc.spi.Connection;
import io.r2dbc.spi.ConnectionFactory;
import jakarta.inject.Inject;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

import java.time.LocalDateTime;
import java.util.List;

@Controller
public class ApiController {

    @Inject
    ConnectionFactory connectionFactory;

    @Get("/")
    public HelloResponse hello() {
        return new HelloResponse("Hello, World!");
    }

    @Get("/orders")
    public Mono<List<Order>> orders() {
        return Mono.from(connectionFactory.create())
                .flatMapMany(conn ->
                        Flux.from(conn.createStatement(
                                        "SELECT id, customer_id, total_cents, status, created_at" +
                                        " FROM orders LIMIT 100 OFFSET 1000")
                                .execute())
                                .flatMap(result -> result.map((row, meta) ->
                                        new Order(
                                                row.get("id", Integer.class),
                                                row.get("customer_id", Integer.class),
                                                row.get("total_cents", Integer.class),
                                                row.get("status", String.class),
                                                row.get("created_at", LocalDateTime.class)
                                        )))
                                .collectList()
                                .doFinally(s -> Mono.from(conn.close()).subscribe())
                )
                .next();
    }
}
