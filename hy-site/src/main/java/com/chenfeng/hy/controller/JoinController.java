package com.chenfeng.hy.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.chenfeng.hy.domain.model.dto.DepartmentDto;
import com.chenfeng.hy.service.PositionService;

@Controller
@RequestMapping("join")
public class JoinController {
    Logger log = Logger.getLogger(JoinController.class);
    
    @Autowired
    private PositionService positionService;
    
    @RequestMapping(value = "forAboutus", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public String forAboutus() {
    	
    	return "join/aboutus";
    }

    @RequestMapping(value = "forPosition", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public String forPosition() {
    	
    	return "join/position";
    }

    @RequestMapping(value = "position", method = RequestMethod.POST)
    @ResponseStatus(HttpStatus.OK)
    @ResponseBody
    public List<DepartmentDto> position() {
    	
    	return positionService.findAll();
    }
    
}
