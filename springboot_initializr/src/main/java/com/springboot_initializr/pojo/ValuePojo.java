package com.springboot_initializr.pojo;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;
import org.springframework.validation.annotation.Validated;

import java.io.Serializable;

@Component
@PropertySource(value = {"classpath:config/valuepojo.properties"})
@ConfigurationProperties(prefix = "valuepojo")
@Validated//数据校验
public class ValuePojo implements Serializable {
    //   从配置文件中配置，在此处获取
//    @Value("1")
    @Value("${ValuePojo.id}")
    private int id;
    //    @Value("渣渣")
    @Value("${ValuePojo.name}")
    private String name;
    //    @Value("88")
    @Value("${ValuePojo.age}")
    private String age;

    @Override
    public String toString() {
        return "ValuePojo{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", age='" + age + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }
}
