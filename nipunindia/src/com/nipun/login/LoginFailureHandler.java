package com.nipun.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

public class LoginFailureHandler implements AuthenticationFailureHandler 
{
	@Autowired
	private UsernamePasswordAuthenticationFilter usernamePasswordAuthenticationFilter;

	@Autowired
	LoginDAO loginDAO;

	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException exception) throws IOException, ServletException 
	{
        String usernameParameter =usernamePasswordAuthenticationFilter.getUsernameParameter();
        String lastUserName = request.getParameter(usernameParameter);
        System.out.println("user name is:"+ lastUserName);
        String passwordParameter=usernamePasswordAuthenticationFilter.getPasswordParameter();
        String password=request.getParameter(passwordParameter);
        System.out.println("password:"+password);
	}

}
