package com.chenfeng.hy.domain.repository;

import com.chenfeng.hy.domain.common.annotation.MyBatisRepository;
import com.chenfeng.hy.domain.model.Home;

@MyBatisRepository
public interface HomeMapper extends CrudMapper<Home, Long>  {

	/**
	 * 公司简介
	 * @return
	 */
	Home companyProfile();

}