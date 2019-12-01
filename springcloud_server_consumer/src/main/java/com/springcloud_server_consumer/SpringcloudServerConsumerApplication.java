package com.springcloud_server_consumer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.SpringCloudApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

//@SpringBootApplication
////@EnableEurekaClient//选用的注册中心是eureka
//@EnableDiscoveryClient//其他的注册中心 范围更广
@SpringCloudApplication
@EnableFeignClients//feign已经集成了ribbon和hystrix 所以可以删掉resttemplate
public class SpringcloudServerConsumerApplication {
    public static void main(String[] args) {
        SpringApplication.run(SpringcloudServerConsumerApplication.class, args);
    }
//    引入resttemplate
    /*@Bean
    @LoadBalanced//负载均衡 ribbon
    public RestTemplate restTemplate(){
        return new RestTemplate();
    }*/
}
