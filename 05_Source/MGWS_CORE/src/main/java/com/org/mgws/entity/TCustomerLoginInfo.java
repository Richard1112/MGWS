package com.org.mgws.entity;

import java.util.Date;

import com.org.mgws.base.entity.BaseEntity;

public class TCustomerLoginInfo extends BaseEntity {

	private static final long serialVersionUID = -2119745425224550708L;

	private Long no;

	private String customerno;
	
	private String loginid;
	
	private String loginpass;
	
	private String salt;
	
	private String division;
	
	private String loginstatus;
	
	private String canlogin;
	
	private String deleteflg;
	
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

	public String getLoginid() {
		return loginid;
	}

	public void setLoginid(String loginid) {
		this.loginid = loginid;
	}

	public String getLoginpass() {
		return loginpass;
	}

	public void setLoginpass(String loginpass) {
		this.loginpass = loginpass;
	}

	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

	public String getDivision() {
		return division;
	}

	public void setDivision(String division) {
		this.division = division;
	}

	public String getLoginstatus() {
		return loginstatus;
	}

	public void setLoginstatus(String loginstatus) {
		this.loginstatus = loginstatus;
	}

	public String getCanlogin() {
		return canlogin;
	}

	public void setCanlogin(String canlogin) {
		this.canlogin = canlogin;
	}

	public String getDeleteflg() {
		return deleteflg;
	}

	public void setDeleteflg(String deleteflg) {
		this.deleteflg = deleteflg;
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