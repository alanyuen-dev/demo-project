package com.microsoft.demoproject.controller;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RestController
public class DemoProjectRestController {

    @RequestMapping(value = "/helloworld", method = RequestMethod.GET)
    public String requestMethodName() {
        return "Hello World!";
    }

}