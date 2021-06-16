package com.lernhow2code.jsp_servlet_json.controller;

import com.google.gson.Gson;
import com.lernhow2code.jsp_servlet_json.model.ProductModel;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ProductController", value = "/product")
public class ProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        Gson gson = new Gson();
        ProductModel productModel = new ProductModel();
        String action = request.getParameter("action");
        if (action.equalsIgnoreCase("demo1")){
            out.print(gson.toJson((productModel.find())));
            out.flush();
            out.close();
        }
        else  if (action.equalsIgnoreCase("demo2")) {
            out.print((gson.toJson(productModel.findAll())));
            out.flush();
            out.close();

        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
