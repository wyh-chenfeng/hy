package com.chenfeng.hy.admin.controller;

import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
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

import com.chenfeng.hy.domain.model.News;
import com.chenfeng.hy.domain.model.vo.BsgridVo;
import com.chenfeng.hy.domain.model.vo.ResultVo;
import com.chenfeng.hy.service.NewsService;
import com.github.pagehelper.Page;

@Controller
@RequestMapping("news")
public class NewsController {
    Logger log = Logger.getLogger(NewsController.class);
    
    @Autowired
    private NewsService newsService;

    @RequestMapping(value = "forAdd", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    @Secured("ROLE_ADMIN")
    public String forAdd(Model model) {
    	return "news/add";
    }
    
    @ResponseBody
	@RequestMapping(value = "add", method = RequestMethod.POST)
    @Secured("ROLE_ADMIN")
	public ResultVo add(News news, @RequestParam("imageFile") MultipartFile imageFile) {
		
		ResultVo resultVo = new ResultVo();
		try {
			newsService.add(news, imageFile);
			
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
    	return "news/index";
    }
    
    @RequestMapping(value = "query", method = RequestMethod.POST)
    @ResponseStatus(HttpStatus.OK)
    @ResponseBody
    @Secured("ROLE_ADMIN")
    public BsgridVo<News> query(Integer curPage, Integer pageSize) {
    	BsgridVo<News> bsgridVo = null;
    	try {
			// 调用service获取数据
    		Page<News> page = newsService.query(curPage, pageSize);
			bsgridVo = new BsgridVo<News>();
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
    	News news = newsService.findOne(id);
    	model.addAttribute("news", news);
    	return "news/detail";
    }

    @RequestMapping(value = "forUpdate", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    @Secured("ROLE_ADMIN")
    public String forUpdate(@RequestParam("id") Long id, Model model) {
    	News news = newsService.findOne(id);
    	model.addAttribute("news", news);
    	return "news/update";
    }

    @RequestMapping(value = "update", method = RequestMethod.POST)
    @ResponseStatus(HttpStatus.OK)
    @ResponseBody
    @Secured("ROLE_ADMIN")
    public ResultVo update(News news, @RequestParam("imageFile") MultipartFile imageFile) {
    	ResultVo resultVo = new ResultVo();
		try {
        	newsService.update(news, imageFile);
        	
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
			newsService.delete(id);
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

    /**
     * 富文本编辑器初始化请求
     * 
     * @author wyh
     * @param request
     * @param response
     */
    @ResponseBody
    @ResponseStatus(HttpStatus.OK)
    @RequestMapping(value = "initUpload")
    @Secured("ROLE_ADMIN")
	public void initUpload(HttpServletRequest request, HttpServletResponse response) {
		try {
			response.getWriter().print("{'uuid':'" + UUID.randomUUID() + "','original':'','url':'','title':'','state':'SUCCESS'}");
		} catch (Exception e) {
			log.error("图片上传初始化错误" + e);
		}
	}

    
    @ResponseBody
    @ResponseStatus(HttpStatus.OK)
    @RequestMapping(value = "fileUplod", method = RequestMethod.GET)
    @Secured("ROLE_ADMIN")
    public Object fileUplod(@RequestParam("file") MultipartFile file) {

        if (file == null || file.isEmpty()) {
            return "上传文件不能为空！";
        }

        Map<String, Object> result = new HashMap<String, Object>(4);
        result.put("success", false);
        File temFile = null;
        try {
            //上传到图片服务器。
            String imagePath = newsService.fileUpload(file);
    		
            if(StringUtils.isNotEmpty(imagePath)){            	
	            result.put("success", true);
	            result.put("url", imagePath);
	            result.put("id", new Date().getTime());
	            result.put("name", file.getOriginalFilename());
	            return result;
            }
        } catch (Exception e) {
            log.error(e.getMessage());

        } finally {
            // 4. 删除临时文件
            if (temFile != null) {
                temFile.deleteOnExit();
            }
        }
        return result;

    }
}
