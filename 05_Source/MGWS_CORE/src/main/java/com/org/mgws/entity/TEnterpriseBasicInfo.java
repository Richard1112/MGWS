package com.org.mgws.entity;

import java.util.Date;

import com.org.mgws.base.entity.BaseEntity;

public class TEnterpriseBasicInfo extends BaseEntity {

	private static final long serialVersionUID = -2119745425224550708L;

	private Long no;

	private String customerNo;
	
	private String cnName;
	
	private String enName;
	
	private String taxNo;
	
	private String passportNo;
	
	private String occupation;
	
	private String comments;
	
	private String deleteFlg;
	
	private Date addTimestamp;
	
	private String addUserKey;
	
	private Date updTimestamp;
	
	private String updUserKey;
	
	private String updPgmId;

	public Long getNo() {
		return no;
	}

	public void setNo(Long no) {
		this.no = no;
	}

	public String getCustomerNo() {
		return customerNo;
	}

	public void setCustomerNo(String customerNo) {
		this.customerNo = customerNo;
	}

	public String getCnName() {
		return cnName;
	}

	public void setCnName(String cnName) {
		this.cnName = cnName;
	}

	public String getEnName() {
		return enName;
	}

	public void setEnName(String enName) {
		this.enName = enName;
	}

	public String getTaxNo() {
		return taxNo;
	}

	public void setTaxNo(String taxNo) {
		this.taxNo = taxNo;
	}

	public String getPassportNo() {
		return passportNo;
	}

	public void setPassportNo(String passportNo) {
		this.passportNo = passportNo;
	}

	public String getOccupation() {
		return occupation;
	}

	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getDeleteFlg() {
		return deleteFlg;
	}

	public void setDeleteFlg(String deleteFlg) {
		this.deleteFlg = deleteFlg;
	}

	public Date getAddTimestamp() {
		return addTimestamp;
	}

	public void setAddTimestamp(Date addTimestamp) {
		this.addTimestamp = addTimestamp;
	}

	public String getAddUserKey() {
		return addUserKey;
	}

	public void setAddUserKey(String addUserKey) {
		this.addUserKey = addUserKey;
	}

	public Date getUpdTimestamp() {
		return updTimestamp;
	}

	public void setUpdTimestamp(Date updTimestamp) {
		this.updTimestamp = updTimestamp;
	}

	public String getUpdUserKey() {
		return updUserKey;
	}

	public void setUpdUserKey(String updUserKey) {
		this.updUserKey = updUserKey;
	}

	public String getUpdPgmId() {
		return updPgmId;
	}

	public void setUpdPgmId(String updPgmId) {
		this.updPgmId = updPgmId;
	}

}