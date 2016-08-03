package com.chenfeng.hy.service;


import java.util.List;

import com.chenfeng.hy.domain.model.Position;
import com.chenfeng.hy.domain.model.dto.DepartmentDto;
import com.github.pagehelper.Page;

public interface PositionService extends CrudService<Position, Long> {

	/**
	 * 添加
	 * 
	 * @author wyh
	 * @param position
	 */
	void add(Position position);

	/**
	 * 分页查询职位数据
	 * 
	 * @author wyh
	 * @param curPage 
	 * @param pageSize
	 * @return Page<{@link Position}>
	 */
	Page<Position> query(Integer curPage, Integer pageSize);

	/**
	 * 查询所有数据
	 * 
	 * @author wyh
	 * @return
	 */
	List<DepartmentDto> findAll();

}
