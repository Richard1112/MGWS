package com.org.mgws.entity;

import com.org.mgws.base.entity.BaseEntity;

public class TInvestmentMaster extends BaseEntity {

	private static final long serialVersionUID = -2119745425224550708L;

	private Long id;

    private String productname;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

}