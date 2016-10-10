package com.org.mgws.entity;

import java.util.Date;

import com.org.mgws.base.entity.BaseEntity;

public class TCustomerLoginInfo extends BaseEntity {

	private static final long serialVersionUID = -2119745425224550708L;

	private Long no;

	private String customerNo;
	
	private String loginId;
	
	private String loginPass;
	
	private String salt;
	
	private String division;
	
	private String loginStatus;
	
	private String canLogin;
	
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

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getLoginPass() {
		return loginPass;
	}

	public void setLoginPass(String loginPass) {
		this.loginPass = loginPass;
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

	public String getLoginStatus() {
		return loginStatus;
	}

	public void setLoginStatus(String loginStatus) {
		this.loginStatus = loginStatus;
	}

	public String getCanLogin() {
		return canLogin;
	}

	public void setCanLogin(String canLogin) {
		this.canLogin = canLogin;
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