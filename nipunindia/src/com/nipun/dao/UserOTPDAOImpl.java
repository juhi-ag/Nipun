package com.nipun.dao;

import java.util.Date;
import java.util.List;

import com.nipun.login.LoginJDBCTemplate;
import com.nipun.modal.RetrieveOTP;
import com.nipun.modal.UserOTP;
import com.nipun.service.Consts;
import com.nipun.service.RetrieveOTPMapper;
import com.nipun.utilities.UtilityManager;







import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.jdbc.core.JdbcTemplate;

import com.nipun.login.Login;
import com.nipun.service.UserOTPMapper;

public class UserOTPDAOImpl  implements UserOTPDAO{
	

	@Autowired
	LoginJDBCTemplate objLoginJDBCTemplate;
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	
	@Override
	public int insertUserOTP(UserOTP userOTP,String email){
			
		UtilityManager objUtilityManager=new UtilityManager();
		Login objLogin=objLoginJDBCTemplate.getLogin(email);
		//objLoginJDBCTemplate=new LoginJDBCTemplate();
		if(userOTP!=null){
			System.out.println("userOTP Oject is not null##########");
		}else{
			System.out.println("userOTP object is null************");
		}
		System.out.println("userOTP object is null$$$$$$$$ "+objLogin.getUserID());
		if(isUserPresent(objLogin.getUserID())){
			userOTP.setUserId(objLogin.getUserID());
			userOTP.setTimeOfGeneration(objUtilityManager.getOTPDate());
			userOTP.setTimeOfUse(objUtilityManager.getOTPExpiryDate());
			userOTP.setOtp(UtilityManager.generateOTP());
			System.out.println("Inside OTP Updation "+userOTP.getOtp()+ " user ID--> "+userOTP.getUserId());
			System.out.println(" SQL---> "+Consts.UPDATE_USER_OTP);
			int rowInserted=jdbcTemplate.update(Consts.UPDATE_USER_OTP,userOTP.getOtp(),userOTP.getTimeOfGeneration(),userOTP.getTimeOfUse(),userOTP.getUserId());
			
			System.out.println("Update row-->"+rowInserted);
			return rowInserted;
		}else{		
			System.out.println("Inside OTP Insertion");
		//objUtilityManager.formatter(userOTP);
		userOTP.setUserId(objLogin.getUserID());
		userOTP.setTimeOfGeneration(objUtilityManager.getOTPDate());
		userOTP.setTimeOfUse(objUtilityManager.getOTPExpiryDate());
		userOTP.setOtp(UtilityManager.generateOTP());
		String sql="insert into userotp(userId,otp,tog,tou) values('"+userOTP.getUserId()+"','"+userOTP.getOtp()+"','"+userOTP.getTimeOfGeneration()+"','"+userOTP.getTimeOfUse()+"')";  
		System.out.print("Sql----> "+ sql);	
		
		int rowInserted=jdbcTemplate.update(sql);
		System.out.println("Row inserted into OTP User "+rowInserted);
		return rowInserted;  
		}
	
	}
	
	public boolean isOTPExpired(String userId,String userotp){
				
		//UserOTP userOTP=jdbcTemplate.queryForObject(Consts.IS_USER_OTP_EXPIRED, new Object[]{userId}, new UserOTPMapper());
		System.out.println(Consts.IS_USER_OTP_EXPIRED+"userId "+userId+ " userotp"+userotp);
		List<UserOTP> userOTP=jdbcTemplate.query(Consts.IS_USER_OTP_EXPIRED, new Object[]{userId,userotp}, new UserMapper());
		boolean flag=false;
		String otpuseDate=userOTP.get(0).getTimeOfUse();
		
		System.out.println("Used OTP Date String--->"+otpuseDate);
	
		String currentDate=UtilityManager.getCurrentTime();
		System.out.println("Current Date String##########--->"+currentDate);
		try{
			Date otpUseDate=UtilityManager.getTime(otpuseDate);
			System.out.println("Used OTP Date otpUseDate -->"+otpUseDate);
			Date currDate=UtilityManager.getTime(currentDate);	
			System.out.println("Current Date currDate ##########--->"+currDate);
			flag=UtilityManager.compareDate(otpUseDate, currDate);
		}catch(Exception ex){
			ex.printStackTrace();
		}
		
		return flag;
	}
	
	public boolean isUserPresent(String userid){
		boolean flag=false;
		
List<UserOTP> list=jdbcTemplate.query(Consts.GET_USER_OTP, new Object[]{userid},new UserOTPMapper());
		
		//UserOTP userOTP=jdbcTemplate.queryForObject(Consts.GET_USER_OTP, new Object[]{userid}, new UserOTPMapper());
		System.out.println("userOTP.getUserId() -->"+list.size());
		if(list.size()>0 && null!=list.get(0).getUserId() && !list.get(0).getUserId().isEmpty()){
			flag=true;
			System.out.println("User present....");			
		}else{
			flag=false;
			System.out.println("User not present....");
		}
		return flag; 
	}

}
