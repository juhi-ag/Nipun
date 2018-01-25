package com.nipun.utilities;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.text.DateFormat;
public class DateTest {
public static void main(String args[]) throws ParseException{
	
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String aDateString = "2012-02-02";
	Date date = sdf.parse(aDateString);
	System.out.println("reference date:"+date);

	Calendar cal = Calendar.getInstance();
	cal.setTime(date);
	cal.add(Calendar.HOUR, 36);
	System.out.println("added one and half days to reference date: "+cal.getTime());

	String newDateString = "2012-02-03 06:30:00.0";
	sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S");
	Date newDate = sdf.parse(newDateString);
	System.out.println("new date to compare with reference date : "+newDate);

	Calendar newCal = Calendar.getInstance();
	newCal.setTime(newDate);
    String strdate="Thu Jan 18 00:00:00 IST 2018";
    String strdate2="Thu Jan 18 00:00:00 IST 2018";
    
	if(cal.after(newCal)){
	    System.out.println("date is greater than reference that.");
	}else if(cal.before(newCal)){
	    System.out.println("date is lesser than reference that.");
	}else{
	    System.out.println("date is equal to reference that.");
	}
    }
	

}
