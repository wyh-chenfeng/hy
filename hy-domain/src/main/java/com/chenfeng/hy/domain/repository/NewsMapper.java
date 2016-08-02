package com.chenfeng.hy.domain.repository;

import org.apache.ibatis.annotations.Param;

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

	/**
	 * 根据type分页查询新闻数据
	 * 
	 * @author wyh
	 * @param curPage 
	 * @param pageSize
	 * @return Page<{@link News}>
	 */
	Page<News> queryByType(@Param("type") String type);

}