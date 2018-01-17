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
		String sql = "select * from user u, user_auth ua where u.email=ua.email and ua.active='Y'";
		List<Map<String, Object>> list = jdbcTemplate.queryForList(sql);
		return list;
	}
	
	public Integer checkEmailExists(String email) {
		Integer userExists=0;
		
		List<Integer> list = jdbcTemplate.queryForList("select user_id from user where email='"+ email + "'", Integer.class);
		if(list.size()>0)
		{
			userExists=list.get(0);
		}
		return userExists;
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
	
	public Integer insertPassword(final User user) {
		Integer userAuthId = null;
		KeyHolder keyHolder = new GeneratedKeyHolder();
		// performs the insert in the database
		try {
			final String query = "insert into user_auth (password,email,active) values (?,?,?)";
				jdbcTemplate.update(new PreparedStatementCreator() {
			    	public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
			    		PreparedStatement ps = connection.prepareStatement(query,Statement.RETURN_GENERATED_KEYS);

			            ps.setString(1, String.valueOf(user.getTempPassword()));
			            ps.setString(2, String.valueOf(user.getEmail()));
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
}
