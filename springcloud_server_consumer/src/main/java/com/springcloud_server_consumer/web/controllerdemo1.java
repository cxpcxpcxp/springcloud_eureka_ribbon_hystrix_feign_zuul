package com.springcloud_server_consumer.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
@RequestMapping("productdemo1")
public class controllerdemo1 {
//    @Autowired
//    RestTemplate restTemplate;//硬编码
//    @RequestMapping("findAll1")
//    public String findAll() {
//        return restTemplate.getForObject("http://127.0.0.1:8891/product/findAll", String.class);
//    }
}
