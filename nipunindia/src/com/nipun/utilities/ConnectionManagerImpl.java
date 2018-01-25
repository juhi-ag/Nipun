package com.nipun.utilities;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class ConnectionManagerImpl {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	

	public void setDataSource(DataSource ds) {
		this.jdbcTemplate = new JdbcTemplate(ds);
	}		
	public  JdbcTemplate getConnection(){
		
		if(jdbcTemplate!=null){
			System.out.println("JdbcTemplate object is not null##########");			
		}else{
			System.out.println("JdbcTemplate is null##########");
		}
		return jdbcTemplate;
	}
}
