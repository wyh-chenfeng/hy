package com.chenfeng.hy.service.impl;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chenfeng.hy.domain.model.Home;
import com.chenfeng.hy.domain.repository.HomeMapper;
import com.chenfeng.hy.service.HomeService;

@Service
@Transactional(readOnly = true)
public class HomeServiceImpl extends
		CrudServiceImpl<Home, Long, HomeMapper> implements HomeService {

	@Resource
	@Override
	public void setRepository(HomeMapper homeMapper) {
		super.setRepository(homeMapper);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public Home create(Home home) {
		if (home.getId() == null) {
			return super.create(home);
		} else if (home.getId() > 0) {
			home.setUpdateTime(new Date());
			return super.update(home);
		}
		return null;
	}

	@Override
	public Home companyProfile() {
		Home home = repository.companyProfile();
		return home == null ? new Home() : home;
	}
}
