package com.nipun.service;

public final class Consts {
	
	
	public static final String RETRIEVE_OTP_SQL="select userId,firstname,lastname,ua.email,mobile,otp from user u,user_auth ua, userotp uotp where u.user_id=uotp.userId and uotp.userId=ua.user_Id";
	public static final String RETRIEVE_OTP_SQL2="select * from user u, user_auth ua";
	public static final String IS_USER_OTP_EXPIRED="select * from userotp where userId=? and otp=?";
	public static final String UPDATE_USER_SESSION="update user_auth set updated_on=? where email=?";	
	public static final String GET_USER_OTP="select * from userotp where userId=?";
	public static final String UPDATE_USER_OTP="update userotp set otp=?,tog=?,tou=? where userid=?";

}
