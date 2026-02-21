package com.performance.springwebflux.router;

import com.performance.springwebflux.model.HelloResponse;
import com.performance.springwebflux.model.Order;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.MediaType;
import org.springframework.r2dbc.core.DatabaseClient;
import org.springframework.web.reactive.function.server.*;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

import java.time.LocalDateTime;

@Configuration
public class RouterConfig {

    @Bean
    public RouterFunction<ServerResponse> routes(DatabaseClient db) {
        return RouterFunctions.route()
            .GET("/", request ->
                ServerResponse.ok()
                    .contentType(MediaType.APPLICATION_JSON)
                    .bodyValue(new HelloResponse()))
            .GET("/orders", request -> {
                Flux<Order> orders = db.sql(
                    "SELECT id, customer_id, total_cents, status, created_at " +
                    "FROM orders LIMIT 100 OFFSET 1000"
                )
                .map(row -> new Order(
                    row.get("id", Integer.class),
                    row.get("customer_id", Integer.class),
                    row.get("total_cents", Integer.class),
                    row.get("status", String.class),
                    row.get("created_at", LocalDateTime.class)
                ))
                .all();

                return ServerResponse.ok()
                    .contentType(MediaType.APPLICATION_JSON)
                    .body(orders, Order.class);
            })
            .build();
    }
}
