package com.org.mgws.entity;

import com.org.mgws.base.entity.BaseEntity;

public class TInvestmentMaster extends BaseEntity {

	private static final long serialVersionUID = -2119745425224550708L;

	private Long id;

	private String productName;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

}