/**
 * 
 */
package com.org.mgws.dto;

/**
 * @author x-wang
 *
 */
public class LoginInfoDto {

	private String userId;
	
	private String userIdForCo;

	private String userPassword;
	
	private String confirmPassword;

	private String partaCode;

	private String division;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserIdForCo() {
		return userIdForCo;
	}

	public void setUserIdForCo(String userIdForCo) {
		this.userIdForCo = userIdForCo;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getPartaCode() {
		return partaCode;
	}

	public void setPartaCode(String partaCode) {
		this.partaCode = partaCode;
	}

	public String getDivision() {
		return division;
	}

	public void setDivision(String division) {
		this.division = division;
	}
	
	
}
