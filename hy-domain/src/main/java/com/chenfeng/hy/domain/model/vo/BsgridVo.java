package com.chenfeng.hy.domain.model.vo;

import java.io.Serializable;
import java.util.List;

/**
 * 表格bsgrid数据封装对象类
 * 
 * @author ZhangKaichuan
 * @date 2015年10月28日 下午1:45:48
 * @param <T>
 */
public class BsgridVo<T> implements Serializable{
	
	private static final long serialVersionUID = -6650723249243262916L;

	private Boolean success;
	
	private Long totalRows;
	
	private Long curPage;
	
	private List<T> data;

	public Boolean getSuccess() {
		return success;
	}

	public void setSuccess(Boolean success) {
		this.success = success;
	}

	public Long getTotalRows() {
		return totalRows;
	}

	public void setTotalRows(Long totalRows) {
		this.totalRows = totalRows;
	}

	public Long getCurPage() {
		return curPage;
	}

	public void setCurPage(Long curPage) {
		this.curPage = curPage;
	}

	public List<T> getData() {
		return data;
	}

	public void setData(List<T> data) {
		this.data = data;
	}

	
}