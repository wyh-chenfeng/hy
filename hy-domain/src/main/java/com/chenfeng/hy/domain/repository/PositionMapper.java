package com.chenfeng.hy.domain.repository;

import com.chenfeng.hy.domain.model.Position;

public interface PositionMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_position
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_position
     *
     * @mbggenerated
     */
    int insert(Position record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_position
     *
     * @mbggenerated
     */
    int insertSelective(Position record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_position
     *
     * @mbggenerated
     */
    Position selectByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_position
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Position record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_position
     *
     * @mbggenerated
     */
    int updateByPrimaryKeyWithBLOBs(Position record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_position
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Position record);
}