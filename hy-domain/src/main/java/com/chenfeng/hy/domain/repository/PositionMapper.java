package com.chenfeng.hy.domain.repository;

import com.chenfeng.hy.domain.common.annotation.MyBatisRepository;
import com.chenfeng.hy.domain.model.Position;

@MyBatisRepository
public interface PositionMapper extends CrudMapper<Position, Long>{
    
}