package com.springcloud_server_consumer.web;

import com.netflix.appinfo.InstanceInfo;
import com.netflix.hystrix.contrib.javanica.annotation.DefaultProperties;
import com.netflix.hystrix.contrib.javanica.annotation.HystrixCommand;
import com.springcloud_server_consumer.client.ProductClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.ServiceInstance;
import org.springframework.cloud.client.discovery.DiscoveryClient;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import java.util.List;

@RestController
@RequestMapping("product")
public class ProductController {
    @Autowired
    ProductClient productClient;
    @RequestMapping("findAll")
    public String findAll(){
        return productClient.findAll();
    }
    @GetMapping("findById/{id}")
    public String findById(@PathVariable("id") String id){
//        12B7ABF2A4C544568B0A7C69F36BF8B7
        return productClient.findById(id);
    }
}
