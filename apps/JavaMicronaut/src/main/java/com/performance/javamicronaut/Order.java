package com.performance.javamicronaut;

import java.time.LocalDateTime;

public record Order(
        Integer id,
        Integer customerId,
        Integer totalCents,
        String status,
        LocalDateTime createdAt) {}
