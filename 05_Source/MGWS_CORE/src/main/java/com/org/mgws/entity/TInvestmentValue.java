package com.org.mgws.entity;

import java.math.BigDecimal;

import com.org.mgws.base.entity.BaseEntity;

public class TInvestmentValue extends BaseEntity {

	private static final long serialVersionUID = -2119745425224550708L;

	private Long id;

	private Long productId;
    
    private String date;
    
	private BigDecimal netValue;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getProductId() {
		return productId;
	}

	public void setProductId(Long productId) {
		this.productId = productId;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public BigDecimal getNetValue() {
		return netValue;
	}

	public void setNetValue(BigDecimal netValue) {
		this.netValue = netValue;
	}

}