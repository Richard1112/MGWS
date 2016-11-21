package com.org.mgws.entity;

import java.util.Date;

import com.org.mgws.base.entity.BaseEntity;

public class TCustomerSecurityInfo extends BaseEntity {

	private static final long serialVersionUID = -2119745425224550708L;

	private Long no;

	private String customerNo;
	
	private String telNo;
	
	private String emailAddr;
	
	private String wechatNo;
	
	private String wechatOpenId;
	
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

	public String getTelNo() {
		return telNo;
	}

	public void setTelNo(String telNo) {
		this.telNo = telNo;
	}

	public String getEmailAddr() {
		return emailAddr;
	}

	public void setEmailAddr(String emailAddr) {
		this.emailAddr = emailAddr;
	}

	public String getWechatNo() {
		return wechatNo;
	}

	public void setWechatNo(String wechatNo) {
		this.wechatNo = wechatNo;
	}

	public String getWechatOpenId() {
		return wechatOpenId;
	}

	public void setWechatOpenId(String wechatOpenId) {
		this.wechatOpenId = wechatOpenId;
	}

	public Date getAddTimestamp() {
		return addTimestamp;
	}

	public void setAddTimestamp(Date addTimestamp) {
		this.addTimestamp = addTimestamp;
	}

	public Date getUpdTimestamp() {
		return updTimestamp;
	}

	public void setUpdTimestamp(Date updTimestamp) {
		this.updTimestamp = updTimestamp;
	}

	public String getAddUserKey() {
		return addUserKey;
	}

	public void setAddUserKey(String addUserKey) {
		this.addUserKey = addUserKey;
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