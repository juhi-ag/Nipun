package com.nipun.modal;

public class User {
	
	private Integer userId;
	private Integer userAuthId;
	private String firstName;
	private String lastName;
	private String email;
	private String telephoneNumber;
	private String tempPassword;
	private String reTypePassword;
	
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getUserAuthId() {
		return userAuthId;
	}
	public void setUserAuthId(Integer userAuthId) {
		this.userAuthId = userAuthId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelephoneNumber() {
		return telephoneNumber;
	}
	public void setTelephoneNumber(String telephoneNumber) {
		this.telephoneNumber = telephoneNumber;
	}
	public String getTempPassword() {
		return tempPassword;
	}
	public void setTempPassword(String tempPassword) {
		this.tempPassword = tempPassword;
	}
	public String getReTypePassword() {
		return reTypePassword;
	}
	public void setReTypePassword(String reTypePassword) {
		this.reTypePassword = reTypePassword;
	}
	
}
