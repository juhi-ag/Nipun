package com.nipun.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;
import net.sf.json.JSONSerializer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.ServletContextAware;

import com.nipun.pojo.User;
import com.nipun.service.NipunService;
 
@RestController
public class NipunController implements ServletContextAware
{
	@Autowired
	NipunService nipunService;
	
	@RequestMapping(value="/loadManageUserData.do")
	public void loadManageUserData(HttpServletRequest req, HttpServletResponse res) {
		String jsonString = "";
		try
		{
			List<Map<String, Object>> woList=nipunService.loadManageUserData();
			jsonString=JSONSerializer.toJSON(woList).toString();
			res.getWriter().write(jsonString);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="/createUser.do")
	public void createUser(HttpServletRequest request, HttpServletResponse response, User user)
	{
		String message = "";
		if(user.getUserAuthId() != null && user.getUserAuthId() > 0) {
			if(nipunService.checkEmailExistsBasedOnUserAuthId(user.getEmail(), user.getUserAuthId())) {
				message = "userExists";
			}
			else {
				nipunService.updateUser(user);
				message = "success";
			}
		}
		else {
			if(nipunService.checkEmailExists(user.getEmail())) {
				message = "userExists";
			}
			else {
				nipunService.createUser(user);
				message = "success";
			}
		}
		
		try {
			response.getWriter().write(message);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("/deleteUser.do")
	public String deleteUser(HttpServletRequest request, HttpServletResponse response){
		int id = Integer.valueOf(request.getParameter("id").toString());
		String result="";
		
		try{
			nipunService.deleteUser(id);
			result = "success";
		}catch(Exception e){
			System.out.println("------------exception----------"+e.getMessage());
			JSONObject jObj=new JSONObject();
			jObj.put("error", e.getMessage());
			result=jObj.toString();
		}
		return result;
	}
	
	@Override
	public void setServletContext(ServletContext arg0) {
		// TODO Auto-generated method stub
		
	}
	
}
