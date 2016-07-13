package com.chenfeng.hy.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chenfeng.hy.domain.model.Department;
import com.chenfeng.hy.domain.repository.DepartmentMapper;
import com.chenfeng.hy.service.DepartmentService;

@Service
@Transactional(readOnly = true)
public class DepartmentServiceImpl extends
		CrudServiceImpl<Department, Long, DepartmentMapper> implements DepartmentService {

	@Resource
	@Override
	public void setRepository(DepartmentMapper departmentMapper) {
		super.setRepository(departmentMapper);
	}

	@Override
	public List<Department> findAll() {
		return repository.findAll();
	}
}
