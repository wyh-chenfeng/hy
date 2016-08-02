package com.chenfeng.hy.controller;

import org.apache.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;

@Controller
@RequestMapping("aboutus")
public class AboutusController {
    Logger log = Logger.getLogger(AboutusController.class);
    
    @RequestMapping(value = "forSummary", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public String forIndex(Model model) {
    	
        return "aboutus/summary";
    }
    
}
