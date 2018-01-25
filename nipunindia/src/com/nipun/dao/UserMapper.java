package com.nipun.dao;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.nipun.login.Login;
import com.nipun.modal.UserOTP;

public class UserMapper implements RowMapper<UserOTP>{
	
	@Override
	public UserOTP mapRow(ResultSet rs, int arg1) throws SQLException 
	{
		UserOTP userOTP=new UserOTP();
		userOTP.setUserId((rs.getString("userId")));
		userOTP.setOtp((rs.getInt("otp")));
		userOTP.setTimeOfGeneration(rs.getString("tog"));
		userOTP.setTimeOfUse(rs.getString("tou"));		
		return userOTP;
	}

}
