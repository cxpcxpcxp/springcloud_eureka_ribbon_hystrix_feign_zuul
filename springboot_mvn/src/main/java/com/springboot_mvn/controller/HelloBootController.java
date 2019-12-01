package com.springboot_mvn.controller;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@EnableAutoConfiguration
@RequestMapping("springboot")
public class HelloBootController {
    @RequestMapping("hello")
    public String hello() {
        return "你好，第一个springboot";
    }
}
