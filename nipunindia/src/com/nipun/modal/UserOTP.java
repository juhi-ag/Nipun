package com.nipun.modal;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class UserOTP {
	
	private String userId;
	private int otp;	
	private String timeOfGeneration;
	private String timeOfUse;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getOtp() {
		return otp;
	}
	public void setOtp(int otp) {
		this.otp = otp;
	}
	public String getTimeOfGeneration() {
		return timeOfGeneration;
	}
	public void setTimeOfGeneration(String timeOfGeneration) {
		this.timeOfGeneration = timeOfGeneration;
	}
	public String getTimeOfUse() {
		return timeOfUse;
	}
	public void setTimeOfUse(String timeOfUse) {
		this.timeOfUse = timeOfUse;
	}	
	
}
