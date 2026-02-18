package com.performance.javaspringbootapi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.reactive.config.EnableWebFlux;

@SpringBootApplication
@EnableWebFlux
public class JavaSpringBootApiApplication {
    public static void main(String[] args) {
        SpringApplication.run(JavaSpringBootApiApplication.class, args);
    }
}
