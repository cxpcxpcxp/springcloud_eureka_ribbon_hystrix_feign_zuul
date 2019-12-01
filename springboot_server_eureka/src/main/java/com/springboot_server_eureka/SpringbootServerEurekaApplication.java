package com.springboot_server_eureka;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
public class SpringbootServerEurekaApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringbootServerEurekaApplication.class, args);
    }

}
