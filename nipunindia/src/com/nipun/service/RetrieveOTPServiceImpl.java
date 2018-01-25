package com.nipun.service;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;

import com.nipun.dao.RetrieveOTPDAO;
import com.nipun.modal.RetrieveOTP;

public class RetrieveOTPServiceImpl implements RetrieveOTPService{
	
	@Autowired
	RetrieveOTPDAO retrieveOTPDAO;
	
	public List<RetrieveOTP> retrieveOTP(){
		return retrieveOTPDAO.retrieveOTP();
	}

	public RetrieveOTP getUserDetails(Map<String, Object> map){
		System.out.println("Enter into getUserDetails");
		Set<Entry<String, Object>> set=map.entrySet();  
	    Iterator<Entry<String, Object>> itr=set.iterator(); 
	    RetrieveOTP retrieveOTP=null;
	    while(itr.hasNext()){  
	       Entry<String, Object> entry=itr.next();  
	       String ans=entry.getKey();  
	       Object obj=entry.getValue();  
	       System.out.println("Answer Information:");  
	       System.out.println(ans);  
	       System.out.println("Posted By: "+obj.toString());  
	       //System.out.println(retrieveOTP.getUserEmail()); 	       
	    }
	    System.out.println("Exit from getUserDetails");
	    return retrieveOTP;
	}
}
