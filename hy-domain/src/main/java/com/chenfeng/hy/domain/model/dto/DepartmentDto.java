package com.chenfeng.hy.domain.model.dto;

import java.io.Serializable;
import java.util.List;

import com.chenfeng.hy.domain.model.Position;

/**
 * 招聘信息
 * 
 * @author wyh
 * @version 1.00 
 * @see 
* @Date 2016年8月3日 下午3:51:28
 */
public class DepartmentDto implements Serializable{
	
	private static final long serialVersionUID = -6650723249243262916L;

	private String departmentName;

	private Long departmentId;
	
	private List<Position> positions;

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	public List<Position> getPositions() {
		return positions;
	}

	public void setPositions(List<Position> positions) {
		this.positions = positions;
	}

	public Long getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(Long departmentId) {
		this.departmentId = departmentId;
	}
	
}