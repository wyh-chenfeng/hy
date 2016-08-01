package com.chenfeng.hy.controller;

import org.apache.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;

@Controller
@RequestMapping("cases")
public class CasesController {
    Logger log = Logger.getLogger(CasesController.class);
    
    @RequestMapping(value = "forIndex", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public String forIndex(Model model) {
    	
        return "cases/index";
    }

    @RequestMapping(value = "forDetail", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public String forDetail(Model model) {
    	
    	return "cases/detail";
    }
    
}
