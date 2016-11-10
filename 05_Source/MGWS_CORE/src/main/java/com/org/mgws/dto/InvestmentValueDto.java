/**
 * 
 */
package com.org.mgws.dto;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * @author x-wang
 *
 */
public class InvestmentValueDto implements Serializable {

	private static final long serialVersionUID = 8709390661719756115L;

	private Long id;

	private Long productId;

	private String productName;
    
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

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
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
