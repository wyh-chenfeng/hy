package com.chenfeng.hy.service;


import com.chenfeng.hy.domain.model.Position;

public interface PositionService extends CrudService<Position, Long> {

	/**
	 * 添加
	 * 
	 * @author wyh
	 * @param position
	 */
	void add(Position position);

}
