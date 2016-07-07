package com.chenfeng.hy.controller;

import org.apache.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;

@Controller
public class IndexController {
    Logger log = Logger.getLogger(IndexController.class);
    
    @RequestMapping(value = "index", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public String forIndex() {
        return "index/index";
    }
    
}
