package com.chenfeng.hy.admin.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.multipart.MultipartFile;

import com.chenfeng.hy.domain.model.Banner;
import com.chenfeng.hy.domain.model.vo.BsgridVo;
import com.chenfeng.hy.domain.model.vo.ResultVo;
import com.chenfeng.hy.service.BannerService;
import com.github.pagehelper.Page;

@Controller
@RequestMapping("banner")
public class BannerController {
    Logger log = Logger.getLogger(BannerController.class);
    
    @Autowired
    private BannerService bannerService;
    
    @RequestMapping(value = "forAdd", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    @Secured("ROLE_ADMIN")
    public String forAdd(Model model) {
    	return "banner/add";
    }
    
    @ResponseBody
	@RequestMapping(value = "add", method = RequestMethod.POST)
    @Secured("ROLE_ADMIN")
	public ResultVo add(Banner banner, @RequestParam("imageFile") MultipartFile imageFile) {
		
		ResultVo resultVo = new ResultVo();
		try {
			bannerService.add(banner, imageFile);
			
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
    
    @RequestMapping(value = "forIndex", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    @Secured("ROLE_ADMIN")
    public String forIndex() {
    	return "banner/index";
    }
    
    @RequestMapping(value = "query", method = RequestMethod.POST)
    @ResponseStatus(HttpStatus.OK)
    @ResponseBody
    @Secured("ROLE_ADMIN")
    public BsgridVo<Banner> query(Integer curPage, Integer pageSize) {
    	BsgridVo<Banner> bsgridVo = null;
    	try {
			// 调用service获取数据
    		Page<Banner> page = bannerService.query(curPage, pageSize);
			bsgridVo = new BsgridVo<Banner>();
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
    
    @RequestMapping(value = "forDetail", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    @Secured("ROLE_ADMIN")
    public String forDetail(@RequestParam("id") Long id, Model model) {
    	Banner banner = bannerService.findOne(id);
    	model.addAttribute("banner", banner);
    	return "banner/detail";
    }

    @RequestMapping(value = "forUpdate", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    @Secured("ROLE_ADMIN")
    public String forUpdate(@RequestParam("id") Long id, Model model) {
    	Banner banner = bannerService.findOne(id);
    	model.addAttribute("banner", banner);
    	return "banner/update";
    }

    @RequestMapping(value = "update", method = RequestMethod.POST)
    @ResponseStatus(HttpStatus.OK)
    @ResponseBody
    @Secured("ROLE_ADMIN")
    public ResultVo update(Banner banner, @RequestParam("imageFile") MultipartFile imageFile) {
    	ResultVo resultVo = new ResultVo();
		try {
        	bannerService.update(banner, imageFile);
        	
			resultVo.setInfo("修改成功！");
			resultVo.setStatus(1);
		} catch (Exception e) {
			e.printStackTrace();
			log.error("修改失败，信息：" + e.getMessage());
			resultVo.setInfo("删修改失败！");
			resultVo.setStatus(0);
		}
		return resultVo;
    }
    
    @ResponseBody
    @ResponseStatus(HttpStatus.OK)
	@RequestMapping(value = "delete", method = RequestMethod.POST)
    @Secured("ROLE_ADMIN")
	public ResultVo delete(@RequestParam("id") Long id) {
		
		ResultVo resultVo = new ResultVo();
		try {
			bannerService.delete(id);
			resultVo.setInfo("删除成功！");
			resultVo.setStatus(1);
		} catch (Exception e) {
			e.printStackTrace();
			log.error("删除失败，信息：" + e.getMessage());
			resultVo.setInfo("删除失败！");
			resultVo.setStatus(0);
		}
		return resultVo;
	}
}
