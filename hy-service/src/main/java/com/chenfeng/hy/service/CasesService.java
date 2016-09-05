package com.chenfeng.hy.service;


import org.springframework.web.multipart.MultipartFile;

import com.chenfeng.hy.domain.model.Cases;
import com.github.pagehelper.Page;

public interface CasesService extends CrudService<Cases, Long> {

	/**
	 * 添加经典案例
	 * 
	 * @author wyh
	 * @param cases {@link Cases}
	 * @param imageFile 图片文件
	 */
	void add(Cases cases, MultipartFile imageFile);

	/**
	 * 查询经典案例数据
	 * 
	 * @author wyh
	 * @param curPage 
	 * @param pageSize
	 * @return Page<{@link Cases}>
	 */
	Page<Cases> query(Integer curPage, Integer pageSize);

	/**
	 * 更新经典案例
	 * 
	 * @author wyh
	 * @param cases {@link Cases}
	 * @param imageFile 上传的图片
	 */
	void update(Cases cases, MultipartFile imageFile);
	
}
