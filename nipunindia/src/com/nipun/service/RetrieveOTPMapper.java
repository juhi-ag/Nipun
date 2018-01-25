package com.nipun.service;


import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;


import com.nipun.modal.RetrieveOTP;



public class RetrieveOTPMapper implements RowMapper<RetrieveOTP>{
	
	@Override
	public RetrieveOTP mapRow(ResultSet rs, int arg1) throws SQLException 
	{
		RetrieveOTP ObjRetriveOTP=new RetrieveOTP();
		
		ObjRetriveOTP.setUserID(rs.getInt("userId"));
		ObjRetriveOTP.setUserFirstName(rs.getString("firstname"));
		ObjRetriveOTP.setUserLastName(rs.getString("lastname"));
		ObjRetriveOTP.setUserEmail(rs.getString("email"));
		ObjRetriveOTP.setUserMobileNo(rs.getInt("mobile"));
		ObjRetriveOTP.setUserOtp(rs.getInt("otp"));
		return ObjRetriveOTP;
	}

}
