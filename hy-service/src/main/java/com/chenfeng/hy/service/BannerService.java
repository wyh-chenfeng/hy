package com.chenfeng.hy.service;


import org.springframework.web.multipart.MultipartFile;

import com.chenfeng.hy.domain.model.Banner;
import com.github.pagehelper.Page;

public interface BannerService extends CrudService<Banner, Long> {

	/**
	 * 添加
	 * 
	 * @author wyh
	 * @param banner {@link Banner}
	 * @param imageFile 图片文件
	 */
	void add(Banner banner, MultipartFile imageFile);

	/**
	 * 分页查询BANNER数据
	 * 
	 * @author wyh
	 * @param curPage 
	 * @param pageSize
	 * @return Page<{@link Banner}>
	 */
	Page<Banner> query(Integer curPage, Integer pageSize);

	/**
	 * 更新BANNER
	 * 
	 * @author wyh
	 * @param banner {@link Banner}
	 * @param imageFile
	 */
	void update(Banner banner, MultipartFile imageFile);
	
}
