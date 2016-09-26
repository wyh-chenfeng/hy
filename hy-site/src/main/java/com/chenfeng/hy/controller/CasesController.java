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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.chenfeng.hy.domain.model.Cases;
import com.chenfeng.hy.domain.model.CasesDetail;
import com.chenfeng.hy.domain.model.vo.BsgridVo;
import com.chenfeng.hy.service.CasesDetailService;
import com.chenfeng.hy.service.CasesService;
import com.github.pagehelper.Page;

@Controller
@RequestMapping("cases")
public class CasesController {
    Logger log = Logger.getLogger(CasesController.class);
    
    @Autowired
    private CasesService casesService;

    @Autowired
    private CasesDetailService casesDetailService;
    
    @RequestMapping(value = "forIndex", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public String forIndex(Model model) {
    	List<Cases> cases = casesService.findAll();
    	model.addAttribute("cases", cases);
        return "cases/index";
    }
    
    @RequestMapping(value = "query", method = RequestMethod.POST)
    @ResponseStatus(HttpStatus.OK)
    @ResponseBody
    public BsgridVo<Cases> query(@RequestParam(required = false, defaultValue = "1", value = "curPage") int curPage, 
            @RequestParam("pageSize") Integer pageSize) {
    	
    	BsgridVo<Cases> bsgridVo = null;
    	try {
			// 调用service获取数据
    		Page<Cases> page = casesService.query(curPage, pageSize);
			bsgridVo = new BsgridVo<Cases>();
			bsgridVo.setCurPage(Long.parseLong(page.getPageNum()+""));
			bsgridVo.setData(page.getResult());
			bsgridVo.setSuccess(true);
			bsgridVo.setTotalRows(page.getTotal());
			bsgridVo.setTotalPages(Long.parseLong(page.getPages()+""));
		} catch (Exception e) {
			e.printStackTrace();
			log.error("获取动态数据异常：" + e.getMessage());
		}
    	return bsgridVo;
    	
    }

    @RequestMapping(value = "forDetail/{id}", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public String forDetail(@PathVariable("id") Long id, Model model) {
    	List<CasesDetail> casesDetails = casesDetailService.findByCasesId(id);
    	model.addAttribute("casesDetails", casesDetails);
    	return "cases/case_detail";
    }
    
}
