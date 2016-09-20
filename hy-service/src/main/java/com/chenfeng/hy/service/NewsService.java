package com.chenfeng.hy.service;


import org.springframework.web.multipart.MultipartFile;

import com.chenfeng.hy.domain.model.News;
import com.github.pagehelper.Page;

public interface NewsService extends CrudService<News, Long> {

	/**
	 * 添加新闻
	 * 
	 * @author wyh
	 * @param news {@link News}
	 * @param imageFile 图片文件
	 */
	void add(News news, MultipartFile imageFile);

	/**
	 * 分页查询新闻数据
	 * 
	 * @author wyh
	 * @param curPage 
	 * @param pageSize
	 * @return Page<{@link News}>
	 */
	Page<News> query(Integer curPage, Integer pageSize);

	/**
	 * 更新新闻
	 * 
	 * @author wyh
	 * @param news {@link News}
	 * @param imageFile 上传的图片
	 */
	void update(News news, MultipartFile imageFile);

	/**
	 * 上传图片
	 * 
	 * @author wyh
	 * @param imageFile 上传的图片
	 */
	String fileUpload(MultipartFile imageFile);

	/**
	 * 根据type分页查询新闻数据
	 * 
	 * @author wyh
	 * @param curPage 
	 * @param pageSize
	 * @return Page<{@link News}>
	 */
	Page<News> queryByType(String type, int curPage, int pageSize);
	
}
