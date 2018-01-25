package com.nipun.service;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import com.nipun.modal.UserOTP;

public class UserOTPMapper implements RowMapper<UserOTP>{
	
	@Override
	public UserOTP mapRow(ResultSet rs, int arg1) throws SQLException 
	{
		UserOTP objUserOTP=new UserOTP();
		objUserOTP.setUserId(rs.getString("userId"));
		objUserOTP.setOtp(rs.getInt("userId"));
		objUserOTP.setTimeOfGeneration(rs.getDate("tog").toString());
		objUserOTP.setTimeOfUse(rs.getDate("tou").toString());		
		return objUserOTP;
	}

}
