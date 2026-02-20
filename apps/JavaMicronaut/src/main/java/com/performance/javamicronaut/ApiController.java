package com.performance.javamicronaut;

import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;
import io.micronaut.scheduling.TaskExecutors;
import io.micronaut.scheduling.annotation.ExecuteOn;
import jakarta.inject.Inject;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Controller
public class ApiController {

    @Inject
    DataSource dataSource;

    @Get("/")
    public HelloResponse hello() {
        return new HelloResponse("Hello, World!");
    }

    @Get("/orders")
    @ExecuteOn(TaskExecutors.IO)
    public List<Order> orders() throws SQLException {
        List<Order> result = new ArrayList<>(100);
        try (Connection conn = dataSource.getConnection();
             PreparedStatement ps = conn.prepareStatement(
                     "SELECT id, customer_id, total_cents, status, created_at" +
                     " FROM orders LIMIT 100 OFFSET 1000");
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                result.add(new Order(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getTimestamp(5).toLocalDateTime()
                ));
            }
        }
        return result;
    }
}
