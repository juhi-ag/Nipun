package com.nipun.login;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class LoginMapper implements RowMapper<Login>
{

	@Override
	public Login mapRow(ResultSet rs, int arg1) throws SQLException 
	{
		Login login=new Login();
		login.setEmail(rs.getString("email"));
		login.setUserID(rs.getString("user_id"));
		login.setPassword(rs.getString("password"));
		login.setCreatedBy(rs.getString("created_by"));
		login.setCreatedOn(rs.getDate("created_on"));
		login.setUpdatedOn(rs.getDate("updated_on"));
		
		return login;
	}
	
}
