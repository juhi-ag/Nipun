package com.nipun.dao;

import java.util.List;
import java.util.Map;

import com.nipun.pojo.User;

public interface NipunDao {
	
	public List<Map<String, Object>> loadManageUserData();
	
	public Integer checkEmailExists(String email);
	
	public Integer createUser(User user);
	
	public Integer insertPassword(User user);
	
	public void deleteUser(int id) throws Exception;
	
}
