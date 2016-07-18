package com.chenfeng.hy.domain.repository;

import com.chenfeng.hy.domain.common.annotation.MyBatisRepository;
import com.chenfeng.hy.domain.model.News;
import com.github.pagehelper.Page;

@MyBatisRepository
public interface NewsMapper extends CrudMapper<News, Long>{

	/**
	 * 分页查询新闻数据
	 * 
	 * @author wyh
	 * @return Page<{@link News}>
	 */
	Page<News> query();

}