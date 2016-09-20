package com.org.mgws.entity;

import java.math.BigDecimal;

import com.org.mgws.base.entity.BaseEntity;

public class TInvestmentValue extends BaseEntity {

	private static final long serialVersionUID = -2119745425224550708L;

	private Long id;

    private Long productid;
    
    private String date;
    
    private BigDecimal netvalue;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getProductid() {
		return productid;
	}

	public void setProductid(Long productid) {
		this.productid = productid;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public BigDecimal getNetvalue() {
		return netvalue;
	}

	public void setNetvalue(BigDecimal netvalue) {
		this.netvalue = netvalue;
	}

}