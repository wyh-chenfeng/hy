package com.chenfeng.hy.service;


import java.util.List;

import com.chenfeng.hy.domain.model.Department;

public interface DepartmentService extends CrudService<Department, Long> {

	/**
	 * 获取所有部门
	 * 
	 * @author wyh
	 * @return
	 */
	List<Department> findAll();

}
