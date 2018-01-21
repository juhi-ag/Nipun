package com.nipun.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import com.nipun.pojo.User;

public class NipunDaoImpl implements NipunDao{
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public List<Map<String, Object>> loadManageUserData() {
		String sql = "select * from user u, user_auth ua where u.user_id=ua.user_id and ua.active='Y'";
		List<Map<String, Object>> list = jdbcTemplate.queryForList(sql);
		return list;
	}
	
	public boolean checkEmailExistsBasedOnUserAuthId(String email, Integer userAuthId) {
		boolean userAlreadExists = false;
		String query = "select count(*) as count from user u, user_auth ua where u.user_id=ua.user_id and active='Y' and u.email=? and user_auth_id!=?";
		List<Map<String, Object>> list = jdbcTemplate.queryForList(query, email, userAuthId);
		if (Integer.parseInt(list.get(0).get("count").toString()) > 0) {
			userAlreadExists = true;
		}
		return userAlreadExists;
	}
	
	public boolean checkEmailExists(String email) {
		boolean userAlreadExists = false;
		String query = "select count(*) as count from user u, user_auth ua where u.user_id=ua.user_id and active='Y' and u.email=?";
		List<Map<String, Object>> list = jdbcTemplate.queryForList(query, email);
		if (Integer.parseInt(list.get(0).get("count").toString()) > 0) {
			userAlreadExists = true;
		}
		return userAlreadExists;
	}
	
	public Integer createUser(final User user) {
		Integer userId = null;
		KeyHolder keyHolder = new GeneratedKeyHolder();
		// performs the insert in the database
		try {
			final String query = "insert into user (firstname,lastname,email,mobile,role) values (?,?,?,?,?)";
				jdbcTemplate.update(new PreparedStatementCreator() {
			    	public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
			    		PreparedStatement ps = connection.prepareStatement(query,Statement.RETURN_GENERATED_KEYS);

			            ps.setString(1, String.valueOf(user.getFirstName()));
			            ps.setString(2, String.valueOf(user.getLastName()));
			            ps.setString(3, String.valueOf(user.getEmail()));
			            ps.setString(4, String.valueOf(user.getTelephoneNumber()));
			            ps.setString(5, "ROLE_USER"); 

			            return ps;
			        }
			    }, keyHolder);
			    // retrieves the value primary key for the inserted key
			    userId = (int) keyHolder.getKey().longValue();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return userId;
	}
	
	public Integer insertUserAuth(final User user, final Integer userId) {
		Integer userAuthId = null;
		KeyHolder keyHolder = new GeneratedKeyHolder();
		// performs the insert in the database
		try {
			final String query = "insert into user_auth (password,user_id,active) values (?,?,?)";
				jdbcTemplate.update(new PreparedStatementCreator() {
			    	public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
			    		PreparedStatement ps = connection.prepareStatement(query,Statement.RETURN_GENERATED_KEYS);

			            ps.setString(1, String.valueOf(user.getTempPassword()));
			            ps.setInt(2, userId);
			            ps.setString(3, "Y");

			            return ps;
			        }
			    }, keyHolder);
			    // retrieves the value primary key for the inserted key
				userAuthId = (int) keyHolder.getKey().longValue();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return userAuthId;
	}
	
	public void deleteUser(int id) throws Exception {
		String query = "update user_auth set active='N' where user_auth_id=?";
		jdbcTemplate.update(query, id);
	}
	
	public int updateUser(User user) {
		String query = "update user set firstname=?, lastname=?, email=?, mobile=? where user_id=?";
		return jdbcTemplate.update(query, user.getFirstName(), user.getLastName(), user.getEmail(), user.getTelephoneNumber(), user.getUserId());
	}
	
	public int updateUserAuth(User user) {
		String query = "update user_auth set password=?, user_id=?, active='Y' where user_auth_id=?";
		return jdbcTemplate.update(query, user.getReTypePassword(), user.getUserId(), user.getUserAuthId());
	}
}
