package com.org.mgws.entity;

import com.org.mgws.base.entity.BaseEntity;

public class TPurchaseRecord extends BaseEntity {

	private static final long serialVersionUID = -2119745425224550708L;

	private Long id;

	private String customerNo;
    
	private Long productId;
    
	private String dateFrom;
    
	private String dateTo;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCustomerNo() {
		return customerNo;
	}

	public void setCustomerNo(String customerNo) {
		this.customerNo = customerNo;
	}

	public Long getProductId() {
		return productId;
	}

	public void setProductId(Long productId) {
		this.productId = productId;
	}

	public String getDateFrom() {
		return dateFrom;
	}

	public void setDateFrom(String dateFrom) {
		this.dateFrom = dateFrom;
	}

	public String getDateTo() {
		return dateTo;
	}

	public void setDateTo(String dateTo) {
		this.dateTo = dateTo;
	}

}