package com.nipun.service;

import com.nipun.modal.UserOTP;

public interface UserOTPService {
	public boolean isOTPExpired(String userId,String userOTP);
	public int insertUserOTP(UserOTP userOTP,String email);
}
