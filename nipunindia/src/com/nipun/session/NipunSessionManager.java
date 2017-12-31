package com.nipun.session;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.nipun.login.Login;

public class NipunSessionManager 
{
	private HttpSession session;
	
	public NipunSessionManager(HttpServletRequest request)
	{
		session=request.getSession();
	}
	
	public Login getLogin()
	{
		Object obj=session.getAttribute("login");
		if(obj!=null && obj instanceof Login)
		{
			return (Login)obj;
		}
		return null;
	}
}
