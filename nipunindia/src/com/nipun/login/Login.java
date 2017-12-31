package com.nipun.login;

import java.util.Date;

public class Login 
{
	private String userID;
	private String email;
	private String password;
	private Date createdOn;
	private Date updatedOn;
	private String createdBy;
	private Date loginTs;
	private String role;
	
	
	public String getUserID() 
	{
		return userID;
	}
	public void setUserID(String userID) 
	{
		this.userID = userID;
	}
	public String getEmail() 
	{
		return email;
	}
	public void setEmail(String email) 
	{
		this.email = email;
	}
	public Date getCreatedOn() 
	{
		return createdOn;
	}
	public void setCreatedOn(Date createdOn) 
	{
		this.createdOn = createdOn;
	}
	public Date getUpdatedOn() 
	{
		return updatedOn;
	}
	public void setUpdatedOn(Date updatedOn) 
	{
		this.updatedOn = updatedOn;
	}
	public String getCreatedBy() 
	{
		return createdBy;
	}
	public void setCreatedBy(String createdBy) 
	{
		this.createdBy = createdBy;
	}
	public String getPassword() 
	{
		return password;
	}
	public void setPassword(String password) 
	{
		this.password = password;
	}
	public Date getLoginTs() {
		return loginTs;
	}
	public void setLoginTs(Date loginTs) {
		this.loginTs = loginTs;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
		
	
}
