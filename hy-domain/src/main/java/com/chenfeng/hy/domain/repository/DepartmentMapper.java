package com.chenfeng.hy.domain.repository;

import java.util.List;

import com.chenfeng.hy.domain.common.annotation.MyBatisRepository;
import com.chenfeng.hy.domain.model.Department;

@MyBatisRepository
public interface DepartmentMapper extends CrudMapper<Department, Long> {

	/**
	 * 获取所有部门
	 * 
	 * @author wyh
	 * @return
	 */
	List<Department> findAll();
    
}