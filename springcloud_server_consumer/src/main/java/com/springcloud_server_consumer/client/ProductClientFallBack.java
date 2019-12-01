package com.springcloud_server_consumer.client;

import org.springframework.stereotype.Component;

@Component
public class ProductClientFallBack implements ProductClient {
    @Override
    public String findAll() {
        return "服务器内部资源错误....";
    }

    @Override
    public String findById(String id) {
        return "服务器内部资源错误....";
    }
}
