package com.lernhow2code.jsp_servlet_json.model;

import com.lernhow2code.jsp_servlet_json.entities.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductModel {
    public Product find(){
        return new Product("p01", "name1", 100);
    }

    public List<Product> findAll(){
        List<Product> result = new ArrayList<Product>();
        result.add(new Product("p01", "name1", 100));
        result.add(new Product("p02", "name2", 200));
        result.add(new Product("p03", "name3", 300));
        return result;
    }
}
