package com.performance.javamicronaut;

import com.fasterxml.jackson.databind.ObjectMapper;
import io.micronaut.scheduling.TaskExecutors;
import io.micronaut.websocket.WebSocketSession;
import io.micronaut.websocket.annotation.OnMessage;
import io.micronaut.websocket.annotation.OnOpen;
import io.micronaut.websocket.annotation.ServerWebSocket;
import jakarta.inject.Inject;
import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@ServerWebSocket("/ws/orders")
public class WsOrdersHandler {

    @Inject
    DataSource dataSource;

    @Inject
    ObjectMapper objectMapper;

    @OnOpen
    public void onOpen(WebSocketSession session) {
        // nothing needed
    }

    @OnMessage
    public void onMessage(String message, WebSocketSession session) throws SQLException, IOException {
        List<Order> orders = new ArrayList<>(100);
        try (Connection conn = dataSource.getConnection();
             PreparedStatement ps = conn.prepareStatement(
                 "SELECT id, customer_id, total_cents, status, created_at" +
                 " FROM orders LIMIT 100 OFFSET 1000");
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                orders.add(new Order(
                    rs.getInt(1),
                    rs.getInt(2),
                    rs.getInt(3),
                    rs.getString(4),
                    rs.getTimestamp(5).toLocalDateTime()
                ));
            }
        }
        session.sendSync(objectMapper.writeValueAsString(orders));
        session.close();
    }
}
