package com.chenfeng.hy.domain.repository;

import com.chenfeng.hy.domain.common.annotation.MyBatisRepository;
import com.chenfeng.hy.domain.model.News;

@MyBatisRepository
public interface NewsMapper extends CrudMapper<News, Long>{

}