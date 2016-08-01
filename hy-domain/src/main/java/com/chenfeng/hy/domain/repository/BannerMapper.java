package com.chenfeng.hy.domain.repository;

import java.util.List;

import com.chenfeng.hy.domain.common.annotation.MyBatisRepository;
import com.chenfeng.hy.domain.model.Banner;
import com.github.pagehelper.Page;

@MyBatisRepository
public interface BannerMapper extends CrudMapper<Banner, Long>{

	/**
	 * 查询banner
	 * 
	 * @author wyh
	 * @return
	 */
	Page<Banner> query();

	/**
	 * 查询所有banner
	 * 
	 * @author wyh
	 * @return
	 */
	List<Banner> findAll();

}