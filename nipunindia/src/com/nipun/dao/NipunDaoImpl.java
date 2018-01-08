package com.nipun.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class NipunDaoImpl implements NipunDao{
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public List<Map<String, Object>> loadManageUserData() {
		String sql = "select * from user u, user_auth ua where u.email=ua.email";
		List<Map<String, Object>> list = jdbcTemplate.queryForList(sql);
		return list;
	}
}
