package com.nipun.dao;

import java.util.List;


import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.nipun.login.Login;
import com.nipun.login.LoginMapper;
import com.nipun.modal.RetrieveOTP;
import com.nipun.service.Consts;
import com.nipun.service.RetrieveOTPMapper;

public class RetrieveOTPDAOImpl implements RetrieveOTPDAO {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public List<RetrieveOTP> retrieveOTP(){
		System.out.println("Enter into retrieveOTP");
		
		//Map<String, Object> map=jdbcTemplate.queryForMap(Consts.RETRIEVE_OTP_SQL);
		
		List<RetrieveOTP> retrieveOTP=jdbcTemplate.query(Consts.RETRIEVE_OTP_SQL, new RetrieveOTPMapper());
		if(retrieveOTP!=null && !retrieveOTP.isEmpty())
		{
			System.out.println("Retrive List of OTP "+retrieveOTP.size());
			return retrieveOTP;
		}
		else
		{
			return null;
		}
	}

}
