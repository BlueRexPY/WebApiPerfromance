package com.performance.javaspringbootapi.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.time.LocalDateTime;

public record Order(
    int id,
    @JsonProperty("customer_id") int customerId,
    @JsonProperty("total_cents") int totalCents,
    String status,
    @JsonProperty("created_at") LocalDateTime createdAt
) {}
