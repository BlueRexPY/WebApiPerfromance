package com.performance.javaquarkus;

import com.fasterxml.jackson.databind.ObjectMapper;
import io.vertx.mutiny.pgclient.PgPool;
import io.vertx.mutiny.sqlclient.Tuple;
import jakarta.inject.Inject;
import jakarta.websocket.OnMessage;
import jakarta.websocket.OnOpen;
import jakarta.websocket.Session;
import jakarta.websocket.server.ServerEndpoint;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@ServerEndpoint("/ws/orders")
public class WsOrdersEndpoint {

    @Inject
    PgPool db;

    @Inject
    ObjectMapper objectMapper;

    @OnOpen
    public void onOpen(Session session) {
        // nothing needed
    }

    @OnMessage
    public void onMessage(String message, Session session) {
        db.preparedQuery(
                "SELECT id, customer_id, total_cents, status, created_at" +
                " FROM orders LIMIT $1 OFFSET $2")
            .execute(Tuple.of(100, 1000))
            .map(rows -> {
                List<Order> result = new ArrayList<>();
                for (var row : rows) {
                    result.add(new Order(
                        row.getInteger("id"),
                        row.getInteger("customer_id"),
                        row.getInteger("total_cents"),
                        row.getString("status"),
                        row.getLocalDateTime("created_at")));
                }
                return result;
            })
            .subscribe().with(
                orders -> {
                    try {
                        session.getBasicRemote().sendText(objectMapper.writeValueAsString(orders));
                        session.close();
                    } catch (IOException e) {
                        // ignore
                    }
                },
                error -> {
                    try { session.close(); } catch (IOException e) { /* ignore */ }
                }
            );
    }
}
