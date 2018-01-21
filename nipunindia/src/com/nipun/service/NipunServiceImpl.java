package com.nipun.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.nipun.dao.NipunDao;
import com.nipun.pojo.User;

public class NipunServiceImpl implements NipunService {
	
	@Autowired
	NipunDao nipunDao;
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
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
		/*DataSourceTransactionManager dataSourceTransactionManager = new DataSourceTransactionManager();
		TransactionStatus status=null;
		dataSourceTransactionManager.setDataSource(jdbcTemplate.getDataSource());
		
		status = dataSourceTransactionManager.getTransaction(new DefaultTransactionDefinition());*/
		Integer userId = nipunDao.createUser(user);
		if(userId > 0) {
			nipunDao.insertUserAuth(user);
			//dataSourceTransactionManager.commit(status);
		}
		return userId;
	}
	
	public void deleteUser(int id) throws Exception {
		nipunDao.deleteUser(id);
	}
	
	public void updateUser(User user) {
		int result = nipunDao.updateUser(user);
		if(result > 0) {
			nipunDao.updateUserAuth(user);
		}
	}
}
