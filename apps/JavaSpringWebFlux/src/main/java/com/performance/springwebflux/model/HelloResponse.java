package com.performance.springwebflux.model;

public record HelloResponse(String message) {
    public HelloResponse() {
        this("Hello, World!");
    }
}
