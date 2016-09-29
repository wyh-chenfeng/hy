package com.chenfeng.hy.controller;

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

import com.chenfeng.hy.domain.model.News;
import com.chenfeng.hy.domain.model.vo.BsgridVo;
import com.chenfeng.hy.service.NewsService;
import com.chenfeng.hy.service.constant.Constants;
import com.github.pagehelper.Page;

@Controller
@RequestMapping("news")
public class NewsController {
    Logger log = Logger.getLogger(NewsController.class);
    
    @Autowired
    private NewsService newsService;
    
    @RequestMapping(value = "forIndex", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public String forIndex(@RequestParam(value="type", required=false, defaultValue="1") String type, Model model) {
    	model.addAttribute("type", type);
    	
        return "news/index";
    }

    @RequestMapping(value = "forDetail/{id}", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public String forDetail(@PathVariable("id") Long id, @RequestParam("type") String type, Model model) {
    	News news = newsService.findOne(id);
    	model.addAttribute("news", news);
    	model.addAttribute("type", type);
    	return "news/detail";
    }

    @RequestMapping(value = "query", method = RequestMethod.POST)
    @ResponseStatus(HttpStatus.OK)
    @ResponseBody
    public BsgridVo<News> query(@RequestParam(required = false, defaultValue = "1", value = "curPage") int curPage, 
            @RequestParam("type") String type) {
    	
    	BsgridVo<News> bsgridVo = null;
    	try {
			// 调用service获取数据
    		Page<News> page = newsService.queryByType(type, curPage, Constants.PAGE_SIZE);
			bsgridVo = new BsgridVo<News>();
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
    
}
