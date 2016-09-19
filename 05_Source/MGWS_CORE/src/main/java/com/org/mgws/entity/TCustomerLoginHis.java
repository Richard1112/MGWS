package com.org.mgws.entity;

import java.util.Date;

import com.org.mgws.base.entity.BaseEntity;

public class TCustomerLoginHis extends BaseEntity {

	private static final long serialVersionUID = -2119745425224550708L;

	private Long no;

	private String customerno;
	
	private Date logintimestamp;
	
	private Date logouttimestamp;

	public Long getNo() {
		return no;
	}

	public void setNo(Long no) {
		this.no = no;
	}

	public String getCustomerno() {
		return customerno;
	}

	public void setCustomerno(String customerno) {
		this.customerno = customerno;
	}

	public Date getLogintimestamp() {
		return logintimestamp;
	}

	public void setLogintimestamp(Date logintimestamp) {
		this.logintimestamp = logintimestamp;
	}

	public Date getLogouttimestamp() {
		return logouttimestamp;
	}

	public void setLogouttimestamp(Date logouttimestamp) {
		this.logouttimestamp = logouttimestamp;
	}

}