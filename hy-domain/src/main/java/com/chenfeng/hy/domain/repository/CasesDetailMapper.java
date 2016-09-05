package com.chenfeng.hy.domain.repository;

import java.util.List;

import com.chenfeng.hy.domain.common.annotation.MyBatisRepository;
import com.chenfeng.hy.domain.model.CasesDetail;
import com.github.pagehelper.Page;

@MyBatisRepository
public interface CasesDetailMapper extends CrudMapper<CasesDetail, Long>{

	/**
	 * 分页查询数据
	 * 
	 * @author wyh
	 * @return
	 */
	Page<CasesDetail> query();

	List<CasesDetail> findAll();
}