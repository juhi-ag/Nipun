package com.nipun.dao;

import java.util.List;
import java.util.Map;

import com.nipun.modal.User;

public interface NipunDao {
	
	public List<Map<String, Object>> loadManageUserData();
	
	public boolean checkEmailExistsBasedOnUserAuthId(String email, Integer userAuthId);
	
	public boolean checkEmailExists(String email);
	
	public Integer createUser(User user);
	
	public Integer insertUserAuth(User user, Integer userId);
	
	public void deleteUser(int id) throws Exception;
	
	public int updateUser(User user);
	
	public int updateUserAuth(User user);
	
}
