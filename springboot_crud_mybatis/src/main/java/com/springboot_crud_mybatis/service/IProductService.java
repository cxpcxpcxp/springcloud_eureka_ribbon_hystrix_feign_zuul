package com.springboot_crud_mybatis.service;

import com.springboot_crud_mybatis.pojo.Product;

import java.util.List;

public interface IProductService {
    public List<Product> findAll();
}
