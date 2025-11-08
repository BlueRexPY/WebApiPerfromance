package com.performance.javaspringbootapi.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.http.codec.ServerCodecConfigurer;
import org.springframework.web.reactive.config.WebFluxConfigurer;

@Configuration
public class WebFluxConfig implements WebFluxConfigurer {

    @Override
    public void configureHttpMessageCodecs(ServerCodecConfigurer configurer) {
        // Increase buffer sizes for better performance
        configurer.defaultCodecs().maxInMemorySize(10 * 1024 * 1024); // 10MB
        configurer.defaultCodecs().enableLoggingRequestDetails(false);
    }
}
