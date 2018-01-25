package com.nipun.modal;

public class RetrieveOTP {
	private int userID;
	private String userFirstName;
	private String userLastName;
	private String userEmail;
	private int userMobileNo;
	private int userOtp;
	
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getUserFirstName() {
		return userFirstName;
	}
	public void setUserFirstName(String userFirstName) {
		this.userFirstName = userFirstName;
	}
	public String getUserLastName() {
		return userLastName;
	}
	public void setUserLastName(String userLastName) {
		this.userLastName = userLastName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public int getUserMobileNo() {
		return userMobileNo;
	}
	public void setUserMobileNo(int userMobileNo) {
		this.userMobileNo = userMobileNo;
	}
	public int getUserOtp() {
		return userOtp;
	}
	public void setUserOtp(int userOtp) {
		this.userOtp = userOtp;
	}	
	
	public String toString(){  
		    return "userID:"+userID+" userFirstName:"+userFirstName+" userLastName:"+userLastName+" userMobileNo:"+userMobileNo+" userOtp:"+userOtp;  
		}
}
