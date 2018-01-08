package com.nipun.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONSerializer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.ServletContextAware;

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
	
	@Override
	public void setServletContext(ServletContext arg0) {
		// TODO Auto-generated method stub
		
	}
	
}
