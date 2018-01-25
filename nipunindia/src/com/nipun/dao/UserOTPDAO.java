package com.nipun.dao;

import com.nipun.modal.*;

import javax.sql.DataSource;

public interface UserOTPDAO {
	
	public int insertUserOTP(UserOTP userOTP,String email);
	public boolean isOTPExpired(String userId,String userOTP);

}
