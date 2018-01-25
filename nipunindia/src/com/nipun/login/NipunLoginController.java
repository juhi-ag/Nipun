package com.nipun.login;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.beans.factory.annotation.Autowired;

import com.nipun.dao.UserOTPDAOImpl;
import com.nipun.modal.RetrieveOTP;
import com.nipun.modal.UserOTP;
import com.nipun.service.RetrieveOTPService;
import com.nipun.service.RetrieveOTPServiceImpl;
import com.nipun.service.UserOTPService;

@Controller
public class NipunLoginController  implements ServletContextAware
{
	
	@Autowired
	RetrieveOTPService objRetrieveOTPService;
	
	@Autowired
	UserOTPService userOTPServiceImpl;
	ServletContext context;
	
	@Override
	public void setServletContext(ServletContext arg0) 
	{
		// TODO Auto-generated method stub
		context=arg0;
	}
	
	@RequestMapping(value="/login")
	public ModelAndView login(HttpServletRequest req, HttpServletResponse res)
	{
		ModelAndView mv=new ModelAndView("login");
		System.out.println("--- success---");
		mv.addObject("Message", "Success");
		return mv;
	}
	
	@RequestMapping(value="/welcome")
	public ModelAndView loginWelcome(HttpServletRequest req, HttpServletResponse res)
	{
		ModelAndView mv=new ModelAndView("welcome");
		mv.addObject("Message", "Success");
		return mv;
	}
	//added for OTP generation
		@RequestMapping(value="/userotp",method = RequestMethod.POST)
		public ModelAndView userOTPGeneration(@ModelAttribute("userOTP") UserOTP userOTP,HttpServletRequest req)
		{
			
			
			String email=req.getParameter("j_username");
			System.out.println("Email===>"+email);
			
			String userid=(String)req.getSession().getAttribute("userid");
			
			System.out.println("UserID===>"+userid);
			if(null!=userOTP){
				System.out.println("###userOTP object is not null###");
			}else{
				System.out.println("$$$$userOTP object is null$$$");
			}
			userOTPServiceImpl.insertUserOTP(userOTP,email);
			/*if(objUserOTPService.isOTPExpired(userOTP.getUserId())){
			objUserOTPDAOImpl.insertUserOTP(userOTP,email);
			ModelAndView mv=new ModelAndView("userotp");		
			//mv.addObject("Message", userotp);
			mv.setViewName("userotp");
			return mv;
			}else{
				ModelAndView mv=new ModelAndView("login");		
				//mv.addObject("Message", userotp);
				mv.setViewName("login");
				return mv;
			}*/
			ModelAndView mv=new ModelAndView("userotp","userOTP",userOTP);		
			//mv.addObject("Message", userotp);
			mv.setViewName("userotp");
			return mv;
		}
		@RequestMapping(value="/submitotp",method = RequestMethod.POST)
		public ModelAndView submitUserOTP(@ModelAttribute("userOTP") UserOTP userOTP,HttpServletRequest req)
		{
			
			
			String user_otp=req.getParameter("j_userotp");
			System.out.println("UserID===>"+user_otp);
			String userid=(String)req.getSession().getAttribute("userid");
			System.out.println("UserID===>"+userid);		
			if(userOTPServiceImpl.isOTPExpired(userid,user_otp)){
			ModelAndView mv=new ModelAndView("welcome");		
			//mv.addObject("Message", userotp);
			System.out.println("#### Welcome Page #######");
			mv.setViewName("welcome");
			return mv;
			}else{
				ModelAndView mv=new ModelAndView("login");		
				//mv.addObject("Message", userotp);
				System.out.println("#### Login Page #######");
				mv.setViewName("login");
				return mv;
			}		
		}
		//end for OTP generation
	@RequestMapping(value="/manageuser")
	public ModelAndView manageUser(HttpServletRequest req, HttpServletResponse res)
	{
		ModelAndView mv=new ModelAndView("manageuser");
		mv.addObject("Message", "Success");
		return mv;
	}
	@RequestMapping(value="/otp")
	/*public ModelAndView manageOTP(HttpServletRequest req, HttpServletResponse res)
	{*/
	public ModelAndView  manageOTP()
	{
		System.out.println("Enter into manageOTP");
		//ModelAndView mv=new ModelAndView("otp");	
		List<RetrieveOTP> retriveOTP=objRetrieveOTPService.retrieveOTP();
		//RetrieveOTP retriveOTP=objRetrieveOTPService.getUserDetails(map);
		System.out.println("Exit from manageOTP "+retriveOTP.size());
		return new ModelAndView("otp","retriveOTP",retriveOTP);  
		
	}
	
	@RequestMapping(value="/adduser")
	public ModelAndView addUser(HttpServletRequest req, HttpServletResponse res)
	{
		ModelAndView mv=new ModelAndView("adduser");
		mv.addObject("Message", "Success");
		return mv;
	}
	
	@RequestMapping(value="/logout")
	public ModelAndView logout(HttpServletRequest req, HttpServletResponse res)
	{
		// any logout call must pass userId in logout url.
		ModelAndView mv=new ModelAndView("login");
		mv.addObject("Message", "Success");
		return mv;
	}
	
	@RequestMapping(value="/changePassword")
	public ModelAndView changePassword(HttpServletRequest req, HttpServletResponse res)
	{
		ModelAndView mv=new ModelAndView("changePassword");
		mv.addObject("Message", "Success");
		return mv;
	}
}
