package com.springcloud_server_consumer.web;

import com.netflix.hystrix.contrib.javanica.annotation.DefaultProperties;
import com.netflix.hystrix.contrib.javanica.annotation.HystrixCommand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
@RequestMapping("product")
@DefaultProperties(defaultFallback = "fallback")
public class ProductControllerTemp {
////    降级方法的编写
//    public String fallback(){
//        return "服务繁忙";
//    }
//
//    @Autowired
//    RestTemplate restTemplate;//硬编码
//    @RequestMapping("findAll")
//    public String findAll(){
//        String url="http://SERVER-PROVIDER/product/findAll";//复杂均衡以后直接使用服务名链接
//        return restTemplate.getForObject(url,String.class);
//    }
//    @HystrixCommand
//    @GetMapping("findById/{id}")
//    public String findById(@PathVariable("id") String id){
////        12B7ABF2A4C544568B0A7C69F36BF8B7
//        if(id==1+""){
//            throw new RuntimeException();
//        }
//        String url="http://SERVER-PROVIDER/product/findById/"+id;//复杂均衡以后直接使用服务名链接
//        return restTemplate.getForObject(url,String.class);
//    }
}
