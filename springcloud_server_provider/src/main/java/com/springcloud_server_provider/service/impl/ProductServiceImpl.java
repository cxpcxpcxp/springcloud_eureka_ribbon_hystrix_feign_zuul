package com.springcloud_server_provider.service.impl;

import com.springcloud_server_provider.mapper.IProductMapper;
import com.springcloud_server_provider.pojo.Product;
import com.springcloud_server_provider.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class ProductServiceImpl implements IProductService {
    @Autowired
    IProductMapper productMapper;
    @Override
    public List<Product> findAll() {
        return productMapper.selectAll();
    }

    @Override
    public Product findById(String id) {
        return productMapper.selectByPrimaryKey(id);
    }
}
