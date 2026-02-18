package com.performance.javaspringbootapi.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.time.LocalDateTime;

public record Order(
    @JsonProperty("id") Integer id,
    @JsonProperty("customer_id") Integer customerId,
    @JsonProperty("total_cents") Integer totalCents,
    @JsonProperty("status") String status,
    @JsonProperty("created_at") LocalDateTime createdAt
) {}
