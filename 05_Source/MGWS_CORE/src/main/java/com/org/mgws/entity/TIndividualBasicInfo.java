package com.org.mgws.entity;

import java.util.Date;

import com.org.mgws.base.entity.BaseEntity;

public class TIndividualBasicInfo extends BaseEntity {

	private static final long serialVersionUID = -2119745425224550708L;

	private Long no;

	private String customerNo;
	
	private String cnSurName;
	
	private String cnGivenName;
	
	private String enFirstName;
	
	private String enMiddleName;
	
	private String enLastName;
	
	private String idCardNo;
	
	private String passportNo;
	
	private String sex;
	
	private String nickName;
	
	private String birthday;
	
	private String headPic;
	
	private String marriage;
	
	private String education;
	
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

	public String getEnFirstName() {
		return enFirstName;
	}

	public void setEnFirstName(String enFirstName) {
		this.enFirstName = enFirstName;
	}

	public String getEnMiddleName() {
		return enMiddleName;
	}

	public void setEnMiddleName(String enMiddleName) {
		this.enMiddleName = enMiddleName;
	}

	public String getEnLastName() {
		return enLastName;
	}

	public void setEnLastName(String enLastName) {
		this.enLastName = enLastName;
	}

	public String getIdCardNo() {
		return idCardNo;
	}

	public void setIdCardNo(String idCardNo) {
		this.idCardNo = idCardNo;
	}

	public String getPassportNo() {
		return passportNo;
	}

	public void setPassportNo(String passportNo) {
		this.passportNo = passportNo;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getHeadPic() {
		return headPic;
	}

	public void setHeadPic(String headPic) {
		this.headPic = headPic;
	}

	public String getMarriage() {
		return marriage;
	}

	public void setMarriage(String marriage) {
		this.marriage = marriage;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
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