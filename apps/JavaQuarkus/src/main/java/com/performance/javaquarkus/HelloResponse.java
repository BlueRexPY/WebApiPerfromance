package com.performance.javaquarkus;

public record HelloResponse(String message) {
    public HelloResponse() {
        this("Hello, World!");
    }
}
