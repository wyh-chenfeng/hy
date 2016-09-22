package com.chenfeng.hy.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.chenfeng.hy.domain.model.Home;
import com.chenfeng.hy.domain.model.dto.DepartmentDto;
import com.chenfeng.hy.service.HomeService;
import com.chenfeng.hy.service.PositionService;

@Controller
@RequestMapping("aboutus")
public class AboutusController {
    Logger log = Logger.getLogger(AboutusController.class);
    
    @Autowired
    private HomeService homeService;

    @Autowired
    private PositionService positionService;
    
    @RequestMapping(value = "forSummary", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public String forSummary(Model model) {
    	Home home = homeService.companyProfile();
    	model.addAttribute("home", home);
        return "aboutus/summary";
    }

    @RequestMapping(value = "forCore", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public String forCore(Model model) {
    	return "aboutus/core";
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

    @RequestMapping(value = "position", method = RequestMethod.POST)
    @ResponseStatus(HttpStatus.OK)
    @ResponseBody
    public List<DepartmentDto> position() {
    	
    	return positionService.findAll();
    }
    
    @RequestMapping(value = "forMiss", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public String forMiss() {
    	
    	return "aboutus/miss";
    }
    
    @RequestMapping(value = "forVision", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public String forVision() {
    	
    	return "aboutus/vision";
    }
    
    @RequestMapping(value = "forCto", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public String forCto() {
    	
    	return "aboutus/cto";
    }

    @RequestMapping(value = "forTeam", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public String forTeam() {
    	
    	return "aboutus/team";
    }
    
}
