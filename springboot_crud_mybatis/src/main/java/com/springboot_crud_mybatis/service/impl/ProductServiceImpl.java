package com.springboot_crud_mybatis.service.impl;

import com.springboot_crud_mybatis.dao.IProductDAO;
import com.springboot_crud_mybatis.pojo.Product;
import com.springboot_crud_mybatis.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ProductServiceImpl implements IProductService {
    @Autowired
    IProductDAO productDAO;
    @Override
    public List<Product> findAll() {
        return productDAO.findAll();
    }
}
