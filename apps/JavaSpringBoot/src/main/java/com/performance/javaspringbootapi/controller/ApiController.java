package com.performance.javaspringbootapi.controller;

import com.performance.javaspringbootapi.model.HelloResponse;
import com.performance.javaspringbootapi.model.Order;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.List;

@RestController
public class ApiController {

    private final JdbcTemplate jdbcTemplate;
    private static final HelloResponse HELLO_RESPONSE = new HelloResponse();

    public ApiController(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @GetMapping("/")
    public HelloResponse hello() {
        return HELLO_RESPONSE;
    }

    @GetMapping("/orders")
    public List<Order> getOrders() {
        return jdbcTemplate.query(
            "SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT 100 OFFSET 1000",
            this::mapRowToOrder
        );
    }

    private Order mapRowToOrder(ResultSet rs, int rowNum) throws SQLException {
        return new Order(
            rs.getInt("id"),
            rs.getInt("customer_id"),
            rs.getInt("total_cents"),
            rs.getString("status"),
            rs.getObject("created_at", LocalDateTime.class)
        );
    }
}
