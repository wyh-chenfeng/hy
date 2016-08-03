package com.chenfeng.hy.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chenfeng.hy.domain.model.Position;
import com.chenfeng.hy.domain.model.dto.DepartmentDto;
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

	@Override
	public List<DepartmentDto> findAll() {
		List<DepartmentDto> departmentDtos = new ArrayList<DepartmentDto>();
		Map<String, List<Position>> map = new HashMap<String, List<Position>>();
		List<Position> positions = repository.findAll();
		for (Position position : positions) {
			List<Position>  list = map.get(position.getDepartmentName());
			if (list == null || list.isEmpty()) {
				list = new ArrayList<Position>();
			}
			list.add(position);
			map.put(position.getDepartmentName(), list);
		}
		for (Entry<String, List<Position>> entry : map.entrySet()) {
			DepartmentDto departmentDto = new DepartmentDto();
			departmentDto.setDepartmentName(entry.getKey());
			departmentDto.setPositions(entry.getValue());
			departmentDtos.add(departmentDto);
		}
		return departmentDtos;
	}
	
}
