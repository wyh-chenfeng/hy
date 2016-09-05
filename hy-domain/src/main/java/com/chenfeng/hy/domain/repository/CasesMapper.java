package com.chenfeng.hy.domain.repository;

import com.chenfeng.hy.domain.common.annotation.MyBatisRepository;
import com.chenfeng.hy.domain.model.Cases;

@MyBatisRepository
public interface CasesMapper extends CrudMapper<Cases, Long>{
	
}