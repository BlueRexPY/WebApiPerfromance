package com.performance.javaspringbootapi.model;

public record HelloResponse(String message) {
    public HelloResponse() {
        this("Hello, World!");
    }
}
