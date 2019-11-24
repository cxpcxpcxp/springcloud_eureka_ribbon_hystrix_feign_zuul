package com.springboot_crud_mybatis.dao;

import com.springboot_crud_mybatis.pojo.Product;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;
@Mapper
public interface IProductDAO {
    @Select("select * from product")
    List<Product> findAll();
}
