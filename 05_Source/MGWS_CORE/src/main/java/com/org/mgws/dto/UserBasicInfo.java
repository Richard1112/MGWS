/**
 * 
 */
package com.org.mgws.dto;

/**
 * @author x-wang
 *
 */
public class UserBasicInfo {
	private Long id;

	private String division;

	private String customerNo;

	private String loginId;

	private String cnSurName;

	private String cnGivenName;

	private String sex;

	/** 企业名称 */
	private String cnName;

	private String registDate;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDivision() {
		return division;
	}

	public void setDivision(String division) {
		this.division = division;
	}

	public String getCustomerNo() {
		return customerNo;
	}

	public void setCustomerNo(String customerNo) {
		this.customerNo = customerNo;
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getCnSurName() {
		return cnSurName;
	}

	public void setCnSurName(String cnSurName) {
		this.cnSurName = cnSurName;
	}

	public String getCnGivenName() {
		return cnGivenName;
	}

	public void setCnGivenName(String cnGivenName) {
		this.cnGivenName = cnGivenName;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getCnName() {
		return cnName;
	}

	public void setCnName(String cnName) {
		this.cnName = cnName;
	}

	public String getRegistDate() {
		return registDate;
	}

	public void setRegistDate(String registDate) {
		this.registDate = registDate;
	}

}
