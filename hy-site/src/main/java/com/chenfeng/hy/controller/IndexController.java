package com.chenfeng.hy.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.chenfeng.hy.domain.model.Banner;
import com.chenfeng.hy.domain.model.News;
import com.chenfeng.hy.service.BannerService;
import com.chenfeng.hy.service.NewsService;
import com.github.pagehelper.Page;

@Controller
public class IndexController {
    Logger log = Logger.getLogger(IndexController.class);
    
    @Autowired
    private BannerService bannerService;

    @Autowired
    private NewsService newsService;
    
    @RequestMapping(value = "index", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public String forIndex(Model model) {
    	List<Banner> banners = bannerService.findAll();
    	Page<News> news = newsService.query(1, 1);
    	model.addAttribute("banners", banners);
    	model.addAttribute("news", news.isEmpty() ? new News() : news.get(0));
        return "index/index";
    }
    
}
