package com.chenfeng.hy.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.chenfeng.hy.domain.model.Home;
import com.chenfeng.hy.service.HomeService;

@Controller
@RequestMapping("aboutus")
public class AboutusController {
    Logger log = Logger.getLogger(AboutusController.class);
    
    @Autowired
    private HomeService homeService;
    
    @RequestMapping(value = "forSummary", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public String forSummary(Model model) {
    	Home home = homeService.companyProfile();
    	model.addAttribute("home", home);
        return "aboutus/summary";
    }

    @RequestMapping(value = "forAboutus", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public String forAboutus() {
    	
    	return "aboutus/aboutus";
    }

    @RequestMapping(value = "forPosition", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public String forPosition() {
    	
    	return "aboutus/position";
    }
    
}