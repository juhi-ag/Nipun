package com.nipun.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;

public class LogoutHandler implements LogoutSuccessHandler 
{

		private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
		
		public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response,  Authentication authentication) throws IOException, ServletException 
	    {
			if (authentication != null) 
			{  
	            // call sproc  
	        }  
			if(authentication==null)
			{
				return;
			}
			Login login=null;
			Object loginObj=request.getSession().getAttribute("login");
			if(loginObj!=null)
			{
				login=(Login)loginObj;
			}
			
	        redirectStrategy.sendRedirect(request, response, "/logout");
	    }
		
		
		
}
