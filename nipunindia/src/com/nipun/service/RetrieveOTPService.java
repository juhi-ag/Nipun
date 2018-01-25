package com.nipun.service;

import java.util.List;
import java.util.Map;

import com.nipun.modal.RetrieveOTP;

public interface RetrieveOTPService {


	public List<RetrieveOTP> retrieveOTP();
	
	public RetrieveOTP getUserDetails(Map<String, Object> map);
		
	

}
