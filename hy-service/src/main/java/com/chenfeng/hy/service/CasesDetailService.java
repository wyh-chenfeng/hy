package com.chenfeng.hy.service;


import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.chenfeng.hy.domain.model.CasesDetail;
import com.github.pagehelper.Page;

public interface CasesDetailService extends CrudService<CasesDetail, Long> {

	/**
	 * 添加典案例详情
	 * 
	 * @author wyh
	 * @param casesDetail {@link CasesDetail}
	 * @param imageFile 图片文件
	 */
	void add(CasesDetail casesDetail, MultipartFile imageFile);

	/**
	 * 分页查询典案例详情数据
	 * 
	 * @author wyh
	 * @param curPage 
	 * @param pageSize
	 * @return Page<{@link CasesDetail}>
	 */
	Page<CasesDetail> query(Integer curPage, Integer pageSize);

	/**
	 * 更新经典案例详情
	 * 
	 * @author wyh
	 * @param casesDetail {@link CasesDetail}
	 * @param imageFile 上传的图片
	 */
	void update(CasesDetail casesDetail, MultipartFile imageFile);

	/**
	 * 查询典案例详情数据
	 * 
	 * @author wyh
	 * @return
	 */
	List<CasesDetail> findAll();

	/**
	 * 根据案例ID查询详情
	 * 
	 * @author wyh
	 * @param caseId
	 * @return
	 */
	List<CasesDetail> findByCasesId(Long casesId);

}
