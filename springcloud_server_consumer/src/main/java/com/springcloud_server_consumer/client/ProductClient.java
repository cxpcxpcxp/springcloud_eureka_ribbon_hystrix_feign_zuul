package com.springcloud_server_consumer.client;

import com.netflix.hystrix.contrib.javanica.annotation.HystrixCommand;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@FeignClient(value = "SERVER-PROVIDER",fallback = ProductClientFallBack.class)
public interface ProductClient {
    @RequestMapping("product/findAll")
    public String findAll();

    @GetMapping("product/findById/{id}")
    public String findById(@PathVariable("id") String id);
}
