package com.chenfeng.hy.domain.repository;

import java.util.List;

import com.chenfeng.hy.domain.common.annotation.MyBatisRepository;
import com.chenfeng.hy.domain.model.Cases;
import com.github.pagehelper.Page;

@MyBatisRepository
public interface CasesMapper extends CrudMapper<Cases, Long>{

	/**
	 * 查询所有经典案例
	 * 
	 * @author wyh
	 * @return
	 */
	List<Cases> findAll();

	/**
	 * 分页查询
	 * 
	 * @author wyh
	 * @return
	 */
	Page<Cases> query();
}