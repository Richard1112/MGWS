package com.org.mgws.entity;

import java.util.Date;

import com.org.mgws.base.entity.BaseEntity;

public class TEnterpriseBasicInfo extends BaseEntity {

	private static final long serialVersionUID = -2119745425224550708L;

	private Long no;

	private String customerno;
	
	private String cnname;
	
	private String enname;
	
	private String taxno;
	
	private String passportno;
	
	private String occupation;
	
	private String comments;
	
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

	public String getCnname() {
		return cnname;
	}

	public void setCnname(String cnname) {
		this.cnname = cnname;
	}

	public String getEnname() {
		return enname;
	}

	public void setEnname(String enname) {
		this.enname = enname;
	}

	public String getTaxno() {
		return taxno;
	}

	public void setTaxno(String taxno) {
		this.taxno = taxno;
	}

	public String getPassportno() {
		return passportno;
	}

	public void setPassportno(String passportno) {
		this.passportno = passportno;
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