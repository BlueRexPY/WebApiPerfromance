package com.performance.javaspringbootapi.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.springframework.data.mongodb.core.mapping.Field;
import java.time.LocalDateTime;

public record Order(
    @Field("id") @JsonProperty("id") Integer id,
    @Field("customer_id") @JsonProperty("customer_id") Integer customerId,
    @Field("total_cents") @JsonProperty("total_cents") Integer totalCents,
    @Field("status") @JsonProperty("status") String status,
    @Field("created_at") @JsonProperty("created_at") LocalDateTime createdAt
) {}
