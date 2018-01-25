package com.nipun.utilities;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateFormat {
	
	public static String getCurrentTime(Date data) {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String ew = formatter.format(data);
		return ew;
	}
	public static Date getTime(String ss) throws ParseException {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date ew = null;
		ew = formatter.parse(ss);
		return ew;
	}
	
	public static Date getTime(String ss, String format) throws ParseException {
		if (ss == null || ss.length() < 8) {
			return null;
		} else {
			SimpleDateFormat formatter = new SimpleDateFormat(format); // "yyyyMMdd"
			Date ew = null;
			try {
				ew = formatter.parse(ss);
			} catch (ParseException e) {
				e.printStackTrace();
			}
			return ew;
		}
	}

	
	public static void main(String args[]) throws ParseException{
		
		Calendar calendar=null;
		calendar = Calendar.getInstance();
        String DateStr=getCurrentTime(calendar.getTime());
       String pattern="yyyy-MM-dd HH:mm:ss";
		
       calendar = Calendar.getInstance();
			
		
		String DateStr1=getCurrentTime(calendar.getTime());
		
		calendar = Calendar.getInstance();
		calendar.add(Calendar.MINUTE, 30);		
		
		String DateStr2=getCurrentTime(calendar.getTime());
		
		System.out.println("String date 1--->"+DateStr);
		
		System.out.println("String date 2--->"+DateStr2);
		
		Date d1=getTime(DateStr1,pattern);
		Date d2=getTime(DateStr2,pattern);
		
		System.out.println("Date 1--->"+d1);
		
		System.out.println("Date 2--->"+d2);
		//comparing date
		if (d1.compareTo(d2) > 0) {
            System.out.println("###d1 is after d2##");
        } else if (d1.compareTo(d2) < 0) {
            System.out.println("###d1 is before d2###");
        } else if (d1.compareTo(d2) == 0) {
            System.out.println("###d1 is equal to d2##");
        }
		

       

	}

}
