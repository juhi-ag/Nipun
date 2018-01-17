package com.nipun.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.nipun.dao.NipunDao;
import com.nipun.pojo.User;

public class NipunServiceImpl implements NipunService {
	
	@Autowired
	NipunDao nipunDao;
	
	public List<Map<String, Object>> loadManageUserData() {
		return nipunDao.loadManageUserData();
	}
	
	public Integer checkEmailExists(String email) {
		return nipunDao.checkEmailExists(email);
	}
	
	public Integer createUser(User user) {
		Integer userId = nipunDao.createUser(user);
		if(userId > 0) {
			nipunDao.insertPassword(user);
		}
		return userId;
	}
	
	public void deleteUser(int id) throws Exception {
		nipunDao.deleteUser(id);
	}
}
