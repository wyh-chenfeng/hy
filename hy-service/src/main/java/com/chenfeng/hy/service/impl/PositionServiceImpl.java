package com.chenfeng.hy.service.impl;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chenfeng.hy.domain.model.Position;
import com.chenfeng.hy.domain.repository.PositionMapper;
import com.chenfeng.hy.service.PositionService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

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
		position.setUpdateTime(new Date());
		create(position);
	}

	@Override
	public Page<Position> query(Integer curPage, Integer pageSize) {
		PageHelper.startPage(curPage, pageSize, true);
		return repository.query();
	}
	
}
