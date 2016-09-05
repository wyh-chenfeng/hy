package com.chenfeng.hy.domain.model;

import java.util.Date;

public class CasesDetail {
    /**
     * ID
     */
    private Long id;

    /**
     * 经典案例ID
     */
    private Long casesId;


    /**
     * 图片
     */
    private String image;

    /**
     * 内容
     */
    private String content;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 更新时间
     */
    private Date updateTime;

    // 扩展字段
    /**
     * 经典案例ID
     */
    private String casesName;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getCasesId() {
		return casesId;
	}

	public void setCasesId(Long casesId) {
		this.casesId = casesId;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreateTime() {
		return createTime;
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

	public String getCasesName() {
		return casesName;
	}

	public void setCasesName(String casesName) {
		this.casesName = casesName;
	}
}