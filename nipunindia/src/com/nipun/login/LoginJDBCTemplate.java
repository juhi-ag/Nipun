package com.nipun.login;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

public class LoginJDBCTemplate implements LoginDAO
{
	private JdbcTemplate jdbcTemplateObject;
	
	@Override
	public void setDataSource(DataSource ds) 
	{
		this.jdbcTemplateObject=new JdbcTemplate(ds);
	}

	@Override
	public Login getLogin(String email) 
	{
		
		String sql="select * from user u, user_auth ua where u.user_id=ua.user_auth_id and u.email='"+email+"'";
		System.out.println("sql----> "+sql);
		List<Login> login=jdbcTemplateObject.query(sql, new LoginMapper());
		if(login!=null && !login.isEmpty())
		{
			System.out.println("in side login ");
			return login.get(0);
		}
		else
		{
			return null;
		}
	}
	
	@Override
	public int insertSession(HashMap<String, Object> sessionMap) 
	{
		StringBuffer sqlFields=new StringBuffer("");
		StringBuffer sqlValues=new StringBuffer("");
		Set<String> keys=sessionMap.keySet();
		for(String key:keys)
		{
			sqlFields.append(key+",");
			Object obj=sessionMap.get(key);
			if(obj instanceof Date)
			{
				sqlValues.append("'2014-11-21 11:11:50',");
			}
			else
			{
				sqlValues.append("'"+obj.toString()+"',");
			}
		}
		String fields=sqlFields.substring(0, sqlFields.length()-1);
		String pholder=sqlValues.substring(0, sqlValues.length()-1);
		String sql="Insert into user_session( "+fields+") values("+pholder+")";
		int result=jdbcTemplateObject.update(sql);
		
		return result;
	}
}
