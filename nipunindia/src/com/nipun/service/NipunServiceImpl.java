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
	
	public boolean checkEmailExistsBasedOnUserAuthId(String email, Integer userAuthId) {
		return nipunDao.checkEmailExistsBasedOnUserAuthId(email, userAuthId);
	}
	
	public boolean checkEmailExists(String email) {
		return nipunDao.checkEmailExists(email);
	}
	
	public Integer createUser(User user) {
		Integer userId = nipunDao.createUser(user);
		if(userId > 0) {
			nipunDao.insertUserAuth(user, userId);
		}
		return userId;
	}
	
	public void deleteUser(int id) throws Exception {
		nipunDao.deleteUser(id);
	}
	
	public void updateUser(User user) {
		int result = nipunDao.updateUser(user);
		System.out.println("Update result row number--->"+result);
		if(result > 0) {
			System.out.println("##########Going to updateUser##########");
			nipunDao.updateUserAuth(user);
		}
	}
}
