package com.performance.javaspringbootapi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.reactive.config.EnableWebFlux;
import reactor.core.scheduler.Schedulers;

@SpringBootApplication
@EnableWebFlux
public class JavaSpringBootApiApplication {
    public static void main(String[] args) {
        // Optimize Reactor schedulers for high throughput
        System.setProperty("reactor.schedulers.defaultBoundedElasticSize", "200");
        System.setProperty("reactor.schedulers.defaultBoundedElasticQueuedTaskCap", "100000");
        
        SpringApplication.run(JavaSpringBootApiApplication.class, args);
    }

    @Bean
    public reactor.core.scheduler.Scheduler jdbcScheduler() {
        return Schedulers.newBoundedElastic(
            100, 
            100000, 
            "jdbc-scheduler",
            60,
            true
        );
    }
}
