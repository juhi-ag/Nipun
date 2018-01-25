package com.nipun.utilities;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class MyBean {
	
		@DateTimeFormat(pattern = "MM-dd-yyyy")	
	  private Date date;

	  public void doSomething () {
	      System.out.println("from my bean, date: " + date);
	  }

	  public void setDate (Date date) {
	      this.date = date;
	  }	
	  public Date getDate(){
		  return date;
	  }

}
