package com.chenfeng.hy.domain.model;

public class Department {
	/**
	 * 部门ID
	 */
    private Long id;

    /**
     * 部门名称
     */
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
}