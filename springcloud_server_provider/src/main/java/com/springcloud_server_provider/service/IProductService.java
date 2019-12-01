package com.springcloud_server_provider.service;

import com.springcloud_server_provider.pojo.Product;

import java.util.List;

public interface IProductService {
    List<Product> findAll();

    Product findById(String id);
}
