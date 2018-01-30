package com.nipun.service;

import java.util.List;
import java.util.Map;

import com.nipun.modal.User;

public interface NipunService {
	
	public List<Map<String, Object>> loadManageUserData();
	
	public boolean checkEmailExistsBasedOnUserAuthId(String email, Integer userAuthId);
	
	public boolean checkEmailExists(String email);
	
	public Integer createUser(User user);
	
	public void deleteUser(int id) throws Exception;
	
	public void updateUser(User user);
	
}
