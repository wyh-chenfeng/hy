package com.chenfeng.hy.domain.repository;

import java.util.List;

import com.chenfeng.hy.domain.common.annotation.MyBatisRepository;
import com.chenfeng.hy.domain.model.Position;
import com.github.pagehelper.Page;

@MyBatisRepository
public interface PositionMapper extends CrudMapper<Position, Long>{

	/**
	 * 职位列表
	 * 
	 * @author wyh
	 * @return Page<{@link Position}>
	 */
	Page<Position> query();

	/**
	 * 职位列表
	 * 
	 * @author wyh
	 * @return
	 */
	List<Position> findAll();
    
}