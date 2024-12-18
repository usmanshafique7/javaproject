package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

// This tells Spring Boot that this class is a Controller
@RestController
@RequestMapping("/api")
public class HelloController {

    // This is a simple GET API
    @GetMapping("/hello")
    public String sayHello() {
        return "Hello, World! Welcome to your first API! test3";
    }
}

