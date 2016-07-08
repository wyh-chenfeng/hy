package com.chenfeng.hy.domain.repository;

import com.chenfeng.hy.domain.common.annotation.MyBatisRepository;
import com.chenfeng.hy.domain.model.Banner;

@MyBatisRepository
public interface BannerMapper extends CrudMapper<Banner, Long>{

}