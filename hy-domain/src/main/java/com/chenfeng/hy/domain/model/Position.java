package com.chenfeng.hy.domain.model;

import java.util.Date;

import org.apache.commons.lang.time.DateFormatUtils;

/**
 * 职位类
 * 
 * @author wyh
 * @version 1.00 
 * @see 
* @Date 2016年7月8日 下午1:52:23
 */
public class Position {
   
    private Long id;

    /**
     * 部门ID
     */
    private Long departmentId;
    
    /**
     * 职位名称
     */
    private String name;

    /**
     * 工作地址
     */
    private String address;

    /**
     * 职责
     */
    private String duty;

    /**
     * 任职条件
     */
    private String recruitment;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 更新时间
     */
    private Date updateTime;
    
    /** 扩展属性*/
    /**
     * 部门名称
     */
    private String departmentName;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getDuty() {
        return duty;
    }

    public void setDuty(String duty) {
        this.duty = duty == null ? null : duty.trim();
    }

    public String getRecruitment() {
        return recruitment;
    }

    public void setRecruitment(String recruitment) {
        this.recruitment = recruitment == null ? null : recruitment.trim();
    }
    
    public Date getCreateTime() {
        return createTime;
    }
    
    public String getCreateTimeStr() {
    	return DateFormatUtils.format(createTime, "yyyy-MM-dd HH:mm:ss");
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

	public Long getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(Long departmentId) {
		this.departmentId = departmentId;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
}