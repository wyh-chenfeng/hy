package com.chenfeng.hy.controller;

import java.util.List;

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

import com.chenfeng.hy.domain.model.Department;
import com.chenfeng.hy.domain.model.Position;
import com.chenfeng.hy.domain.model.vo.BsgridVo;
import com.chenfeng.hy.service.DepartmentService;
import com.chenfeng.hy.service.PositionService;
import com.github.pagehelper.Page;

@Controller
@RequestMapping("position")
public class PositionController {
    Logger log = Logger.getLogger(PositionController.class);
    
    @Autowired
    private DepartmentService departmentService;

    @Autowired
    private PositionService positionService;
    
    @RequestMapping(value = "forAdd", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    @Secured("ROLE_ADMIN")
    public String forAdd(Model model) {
    	List<Department> departments = departmentService.findAll();
    	model.addAttribute("departments", departments);
    	return "manage/position/add";
    }

    @RequestMapping(value = "add", method = RequestMethod.POST)
    @ResponseStatus(HttpStatus.OK)
    @ResponseBody
    @Secured("ROLE_ADMIN")
    public String add(Position position) {
    	positionService.add(position);
    	return "manage/position/add";
    }

    @RequestMapping(value = "forIndex", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    @Secured("ROLE_ADMIN")
    public String forIndex() {
    	return "manage/position/index";
    }

    @RequestMapping(value = "query", method = RequestMethod.POST)
    @ResponseStatus(HttpStatus.OK)
    @ResponseBody
    @Secured("ROLE_ADMIN")
    public BsgridVo<Position> query(Integer curPage, Integer pageSize) {
    	BsgridVo<Position> bsgridVo = null;
    	try {
			// 调用service获取数据
    		Page<Position> page = positionService.query(curPage, pageSize);
			bsgridVo = new BsgridVo<Position>();
			bsgridVo.setCurPage(curPage.longValue());
			bsgridVo.setData(page);
			bsgridVo.setSuccess(true);
			bsgridVo.setTotalRows(page.getTotal());
		} catch (Exception e) {
			e.printStackTrace();
			log.error("编码规则查询异常：" + e.getMessage());
		}
    	return bsgridVo;
    }
    
}
