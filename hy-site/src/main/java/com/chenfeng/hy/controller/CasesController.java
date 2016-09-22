package com.chenfeng.hy.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.chenfeng.hy.domain.model.Cases;
import com.chenfeng.hy.service.CasesService;

@Controller
@RequestMapping("cases")
public class CasesController {
    Logger log = Logger.getLogger(CasesController.class);
    
    @Autowired
    private CasesService casesService;

    @RequestMapping(value = "forIndex", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public String forIndex(Model model) {
    	List<Cases> cases = casesService.findAll();
    	model.addAttribute("cases", cases);
        return "cases/index";
    }

    @RequestMapping(value = "forDetail/{id}", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public String forDetail(@PathVariable("id") Long id, Model model) {
//    	List<CasesDetail> casesDetails = casesDetailService.findByCasesId(id);
//    	model.addAttribute("casesDetails", casesDetails);
    	return "cases/case_detail";
    }
    
}
