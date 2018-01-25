/**
 * 
 */
package com.nipun.login;

import java.io.IOException;
import java.util.Collection;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

/**
 * @author Lenovo
 *
 */
public class LoginSuccessHndler implements AuthenticationSuccessHandler 
{
	@Autowired
	private UsernamePasswordAuthenticationFilter usernamePasswordAuthenticationFilter;
	
	@Autowired
	LoginDAO loginDAO;
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException 
	{
		System.out.println("Entering onAuthenticationSuccess method");
		String usernameParameter =usernamePasswordAuthenticationFilter.getUsernameParameter();
        String lastUserName = request.getParameter(usernameParameter);
        System.out.println("lastUserName----> "+lastUserName);
        String url=null;
        String role="";
        Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
        for (GrantedAuthority grantedAuthority : authorities) {
        	role=grantedAuthority.getAuthority();
        	System.out.println("##ROLE---> "+role);
            if (grantedAuthority.getAuthority().equalsIgnoreCase("ROLE_ADMIN"))
            {
                url="/welcome";
                break;
            }
            else {
            	url="/userotp";
                break;
            }
        }
        System.out.println(role+"user name is:"+ lastUserName);

        Login login=loginDAO.getLogin(lastUserName);
       // System.out.println("Attempt saved");
        login.setLoginTs(new Date());
        login.setRole(role);
        request.getSession().setAttribute("login", login);
        
        if(url!=null && url.equals("/welcome"))
        {
        	request.getRequestDispatcher("welcome").forward(request, response);
        }else
        if(url!=null && url.equals("/userotp"))
        {
        	System.out.println("Going to User OTP "+login.getUserID());
        	request.getSession().setAttribute("userid", login.getUserID());
        	request.getRequestDispatcher("userotp").forward(request, response);
        }
        else
        {
        	request.getRequestDispatcher("login").forward(request, response);
        }
	}

}
