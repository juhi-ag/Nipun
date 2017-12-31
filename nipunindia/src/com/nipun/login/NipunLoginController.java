package com.nipun.login;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NipunLoginController  implements ServletContextAware
{
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
	
	@RequestMapping(value="/manageuser")
	public ModelAndView manageUser(HttpServletRequest req, HttpServletResponse res)
	{
		ModelAndView mv=new ModelAndView("manageuser");
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
