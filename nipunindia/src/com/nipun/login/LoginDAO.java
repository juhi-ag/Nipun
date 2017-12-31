package com.nipun.login;

import java.util.HashMap;

import javax.sql.DataSource;

public interface LoginDAO 
{
	public void setDataSource(DataSource ds);
	public Login getLogin(String email);
	public int insertSession(HashMap<String, Object> sessionMap);
}
