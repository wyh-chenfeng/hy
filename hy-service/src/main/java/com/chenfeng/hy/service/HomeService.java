package com.chenfeng.hy.service;


import com.chenfeng.hy.domain.model.Home;

public interface HomeService extends CrudService<Home, Long> {

	/**
	 * 获取公司简介
	 * @return
	 */
	Home companyProfile();

}
