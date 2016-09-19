package com.org.mgws.entity;

import java.util.Date;

import com.org.mgws.base.entity.BaseEntity;

public class TCustomerSecurityInfo extends BaseEntity {

	private static final long serialVersionUID = -2119745425224550708L;

	private Long no;

	private String customerno;
	
	private String telno;
	
	private String emailaddr;
	
	private String wechatno;
	
	private String wechatopenid;
	
	private Date addtimestamp;
	
	private String adduserkey;
	
	private Date updtimestamp;
	
	private String upduserkey;
	
	private String updpgmid;

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

	public String getTelno() {
		return telno;
	}

	public void setTelno(String telno) {
		this.telno = telno;
	}

	public String getEmailaddr() {
		return emailaddr;
	}

	public void setEmailaddr(String emailaddr) {
		this.emailaddr = emailaddr;
	}

	public String getWechatno() {
		return wechatno;
	}

	public void setWechatno(String wechatno) {
		this.wechatno = wechatno;
	}

	public String getWechatopenid() {
		return wechatopenid;
	}

	public void setWechatopenid(String wechatopenid) {
		this.wechatopenid = wechatopenid;
	}

	public Date getAddtimestamp() {
		return addtimestamp;
	}

	public void setAddtimestamp(Date addtimestamp) {
		this.addtimestamp = addtimestamp;
	}

	public String getAdduserkey() {
		return adduserkey;
	}

	public void setAdduserkey(String adduserkey) {
		this.adduserkey = adduserkey;
	}

	public Date getUpdtimestamp() {
		return updtimestamp;
	}

	public void setUpdtimestamp(Date updtimestamp) {
		this.updtimestamp = updtimestamp;
	}

	public String getUpduserkey() {
		return upduserkey;
	}

	public void setUpduserkey(String upduserkey) {
		this.upduserkey = upduserkey;
	}

	public String getUpdpgmid() {
		return updpgmid;
	}

	public void setUpdpgmid(String updpgmid) {
		this.updpgmid = updpgmid;
	}

}