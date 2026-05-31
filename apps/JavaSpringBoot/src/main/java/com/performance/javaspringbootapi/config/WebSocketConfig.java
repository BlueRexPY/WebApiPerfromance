package com.performance.javaspringbootapi.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.performance.javaspringbootapi.model.Order;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.r2dbc.core.DatabaseClient;
import org.springframework.web.reactive.HandlerMapping;
import org.springframework.web.reactive.handler.SimpleUrlHandlerMapping;
import org.springframework.web.reactive.socket.WebSocketHandler;
import org.springframework.web.reactive.socket.WebSocketMessage;
import org.springframework.web.reactive.socket.server.support.WebSocketHandlerAdapter;
import reactor.core.publisher.Mono;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

@Configuration
public class WebSocketConfig {

    private final DatabaseClient db;
    private final ObjectMapper objectMapper;

    public WebSocketConfig(DatabaseClient db, ObjectMapper objectMapper) {
        this.db = db;
        this.objectMapper = objectMapper;
    }

    @Bean
    public HandlerMapping wsHandlerMapping() {
        SimpleUrlHandlerMapping mapping = new SimpleUrlHandlerMapping();
        mapping.setOrder(-1);
        mapping.setUrlMap(Map.of(
            "/ws/echo", wsEchoHandler(),
            "/ws/orders", wsOrdersHandler()
        ));
        return mapping;
    }

    @Bean
    public WebSocketHandlerAdapter handlerAdapter() {
        return new WebSocketHandlerAdapter();
    }

    private WebSocketHandler wsEchoHandler() {
        return session -> session.send(session.receive()
            .map(msg -> session.textMessage(msg.getPayloadAsText())));
    }

    private WebSocketHandler wsOrdersHandler() {
        return session -> session.send(
            session.receive().take(1).flatMap(trigger ->
                db.sql("SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT 100 OFFSET 1000")
                    .map(row -> new Order(
                        row.get("id", Integer.class),
                        row.get("customer_id", Integer.class),
                        row.get("total_cents", Integer.class),
                        row.get("status", String.class),
                        row.get("created_at", LocalDateTime.class)
                    ))
                    .all()
                    .collectList()
                    .flatMap(orders -> {
                        try {
                            String json = objectMapper.writeValueAsString(orders);
                            return Mono.just(session.textMessage(json));
                        } catch (Exception e) {
                            return Mono.error(e);
                        }
                    })
            )
        );
    }
}
