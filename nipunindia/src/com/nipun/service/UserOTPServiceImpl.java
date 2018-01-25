package com.nipun.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.nipun.dao.UserOTPDAO;
import com.nipun.modal.UserOTP;



public class UserOTPServiceImpl implements UserOTPService{
	
	@Autowired
	UserOTPDAO userOTPDAOImpl;
	
	public boolean isOTPExpired(String userId,String userOTP){
		return userOTPDAOImpl.isOTPExpired(userId,userOTP);
	}
	public int insertUserOTP(UserOTP userOTP,String email){
		return userOTPDAOImpl.insertUserOTP(userOTP, email);
	}

}
