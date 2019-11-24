package com.springboot_crud_mybatis.web;

import com.springboot_crud_mybatis.pojo.Product;
import com.springboot_crud_mybatis.service.IProductService;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
@Slf4j //  可以直接使用log打印输出  不需要创建对象
@Controller
@RequestMapping("product")
public class ProductController {
//    private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
    @Autowired
    IProductService productService;
    @RequestMapping("findAll")
    public ModelAndView findAll(){
        ModelAndView mv = new ModelAndView();
        List<Product> productList = productService.findAll();
        mv.addObject("productList",productList);
        mv.setViewName("product-list");
        for (Product product : productList) {
            System.out.println("product-->"+product);
        }
        log.info("日志输出。。。。");
        return mv;
    }
}
