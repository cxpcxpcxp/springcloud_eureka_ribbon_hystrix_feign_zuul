package com.springcloud_server_consumer.web;

import com.netflix.hystrix.contrib.javanica.annotation.DefaultProperties;
import com.netflix.hystrix.contrib.javanica.annotation.HystrixCommand;
import com.springcloud_server_consumer.client.ProductClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("product")
@DefaultProperties(defaultFallback = "fallback")
public class ProductControllerTemp2 {
////    降级方法的编写
//    public String fallback(){
//        return "服务繁忙";
//    }
//    @Autowired
//    ProductClient productClient;
//    @RequestMapping("findAll")
//    public String findAll(){
//        return productClient.findAll();
//    }
//    @HystrixCommand
//    @GetMapping("findById/{id}")
//    public String findById(@PathVariable("id") String id){
////        12B7ABF2A4C544568B0A7C69F36BF8B7
//        if(id==1+""){
//            throw new RuntimeException();
//        }
//        return productClient.findById(id);
//    }
}
