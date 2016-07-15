package com.chenfeng.hy.admin.controller;

import org.apache.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;

@Controller
@RequestMapping("banner")
public class BannerController {
    Logger log = Logger.getLogger(BannerController.class);
    
    @RequestMapping(value = "forAdd", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    @Secured("ROLE_ADMIN")
    public String forAdd(Model model) {
    	return "banner/add";
    }
    
//    @ResponseBody
//    @ResponseStatus(HttpStatus.OK)
//	@RequestMapping(value = "delete", method = RequestMethod.POST)
//    @Secured("ROLE_ADMIN")
//	public ResultVo delete(@RequestParam("id") Long id) {
//		
//		ResultVo resultVo = new ResultVo();
//		try {
//			positionService.delete(id);
//			resultVo.setInfo("删除成功！");
//			resultVo.setStatus(1);
//		} catch (Exception e) {
//			e.printStackTrace();
//			log.error("删除失败，信息：" + e.getMessage());
//			resultVo.setInfo("删除失败！");
//			resultVo.setStatus(0);
//		}
//		return resultVo;
//	}
    
}
