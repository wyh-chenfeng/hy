package com.chenfeng.hy.service.impl;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chenfeng.hy.domain.model.Position;
import com.chenfeng.hy.domain.repository.PositionMapper;
import com.chenfeng.hy.service.PositionService;

@Service
@Transactional(readOnly = true)
public class PositionServiceImpl extends
		CrudServiceImpl<Position, Long, PositionMapper> implements PositionService {

	@Resource
	@Override
	public void setRepository(PositionMapper positionMapper) {
		super.setRepository(positionMapper);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public void add(Position position) {
		position.setCreateTime(new Date());
		create(position);
	}
	
}
