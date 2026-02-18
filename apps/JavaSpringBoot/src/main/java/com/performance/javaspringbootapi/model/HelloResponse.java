package com.performance.javaspringbootapi.model;

import com.fasterxml.jackson.annotation.JsonProperty;

public record HelloResponse(
    @JsonProperty("message") String message
) {
    public HelloResponse() {
        this("Hello, World!");
    }
}
