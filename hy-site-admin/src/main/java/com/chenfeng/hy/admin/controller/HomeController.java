package com.chenfeng.hy.admin.controller;

import java.util.Date;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.chenfeng.hy.domain.model.Home;
import com.chenfeng.hy.domain.model.vo.ResultVo;
import com.chenfeng.hy.service.HomeService;

@Controller
@RequestMapping("home")
public class HomeController {
    Logger log = Logger.getLogger(HomeController.class);
    
    @Autowired
    private HomeService homeService;
    
    @RequestMapping(value = "forAdd", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    @Secured("ROLE_ADMIN")
    public String forAdd(Model model) {
    	Home home = homeService.companyProfile();
    	model.addAttribute("home", home);
    	return "home/add";
    }
    
    @ResponseBody
	@RequestMapping(value = "add", method = RequestMethod.POST)
    @Secured("ROLE_ADMIN")
	public ResultVo add(Home home) {
		
		ResultVo resultVo = new ResultVo();
		try {
			home.setCreateTime(new Date());
			home.setUpdateTime(new Date());
			homeService.create(home);

			resultVo.setInfo("添加成功！");
			resultVo.setStatus(1);
		} catch (Exception e) {
			e.printStackTrace();
			log.error("添加失败，信息：" + e.getMessage());
			resultVo.setInfo("添加失败！");
			resultVo.setStatus(0);
		}
		return resultVo;
	}
}
