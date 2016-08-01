package com.chenfeng.hy.controller;

import org.apache.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;

@Controller
@RequestMapping("solutions")
public class SolutionsController {
    Logger log = Logger.getLogger(SolutionsController.class);
    
    @RequestMapping(value = "index", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public String forIndex(Model model) {
    	
        return "solutions/index";
    }
    
}
