package com.springcloud_server_consumer.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.ServiceInstance;
import org.springframework.cloud.client.discovery.DiscoveryClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import java.util.List;

@RestController
@RequestMapping("productdemo2")
public class controllerdemo2 {
//    @Autowired
//    RestTemplate restTemplate;//硬编码
//    @Autowired
//    DiscoveryClient discoveryClient;//软编码
//    @RequestMapping("findAll2")
//    public String findAll() {
//        List<ServiceInstance> instances = discoveryClient.getInstances("SERVER-PROVIDER");
//        ServiceInstance serviceInstance = instances.get(0);
//        String url="http://"+serviceInstance.getHost()+":"+serviceInstance.getPort()+"/product/findAll";
//        return restTemplate.getForObject(url,String.class);
//    }
}
