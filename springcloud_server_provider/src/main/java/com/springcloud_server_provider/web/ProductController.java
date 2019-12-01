package com.springcloud_server_provider.web;

import com.springcloud_server_provider.pojo.Product;
import com.springcloud_server_provider.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("product")
public class ProductController {
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
        return mv;
    }

    @GetMapping("findById/{id}")
    public ModelAndView findById(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView();
        Product product = productService.findById(id);
        System.out.println(product);
        mv.addObject("product",product);
        mv.setViewName("product-findById");
        return mv;
    }
}
