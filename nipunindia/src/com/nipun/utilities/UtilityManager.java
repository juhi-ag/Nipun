package com.nipun.utilities;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;

import org.springframework.beans.MutablePropertyValues;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.NumberFormat;
import org.springframework.format.datetime.DateTimeFormatAnnotationFormatterFactory;
import org.springframework.format.number.NumberFormatAnnotationFormatterFactory;
import org.springframework.format.support.DefaultFormattingConversionService;
import org.springframework.validation.DataBinder;



public class UtilityManager {
	
	private static final Random generator = new Random();
	
	
	public String getOTPDate(){
		Calendar calendar=null;
		String pattern = "yyyy-MM-dd hh:mm:ss";
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
		calendar = Calendar.getInstance();
		return simpleDateFormat.format(calendar.getTime());
		//return calendar.getTime();		
	}
	
	public static String updateLoginDate(){
		Calendar calendar=null;
		String pattern = "yyyy-MM-dd hh:mm:ss";
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
		calendar = Calendar.getInstance();
		return simpleDateFormat.format(calendar.getTime());
		//return calendar.getTime();		
	}
	// Add 30 minutes to the calendar time
	public String getOTPExpiryDate() {
		Calendar calendar=null;
		String pattern = "yyyy-MM-dd hh:mm:ss";
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);	
		
		calendar = Calendar.getInstance();
		calendar.add(Calendar.MINUTE, 30);		
		return simpleDateFormat.format(calendar.getTime());
		//return calendar.getTime();
	}
	/*public static void main(String args[]){
		UtilityManager obj=new UtilityManager();
	System.out.println("Current Date "+obj.getOTPDate());
	System.out.println("Updated Date "+obj.getOTPExpiryDate());

	}*/
	
	public static int  generateOTP() {
	    return 100000 + generator.nextInt(900000);
	} 
	
	
	public boolean isUserOTPExpired(String tou){
		Calendar calendar = Calendar.getInstance();
        System.out.println("Original = " + new SimpleDateFormat("MM-dd-yyyy hh:mm:ss").format(Calendar.getInstance().getTime()).toString());
		
		
		return true;
		
	}
	public static String getTime(long l) {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String ew = formatter.format(new Date(l));
		return ew;
	}

	public static String getTime(long l, String format) {
		SimpleDateFormat formatter = new SimpleDateFormat(format);
		String ew = formatter.format(new Date(l));
		return ew;
	}

	public static String getCurrentTime() {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String ew = formatter.format(new Date(System.currentTimeMillis()));
		System.out.println("EW%%%%%%%%%%%===> "+ew);
		return ew;
	}

	public static String getCurrentTime(Date data) {
		//SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String ew = formatter.format(data);
		return ew;
	}
	
	public static String getCurrentTime(String data) {
		//SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String ew = formatter.format(data);
		return ew;
	}

	public static String getCurrentTime(Date data, String format) {
		SimpleDateFormat formatter = new SimpleDateFormat(format); // "yyyy-MM-dd"
		String ew = formatter.format(data);
		return ew;
	}

	public static Date getTime(String ss) throws ParseException {
		//SimpleDateFormat formatter = new SimpleDateFormat("MMddyyyy_HHmmss");
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date ew = null;
		ew = formatter.parse(ss);
		return ew;
	}
	public static Date getDBDate() throws ParseException{
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd"); // your template here
		java.util.Date dateStr = formatter.parse(new Date(System.currentTimeMillis()).toString());
		java.sql.Date dateDB = new java.sql.Date(dateStr.getTime());
		return dateDB;
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
	
	public static boolean compareDate(String date1,String date2) throws ParseException{
		
		boolean flag=false;
		
		Date firstDate=getTime(date1);
		Date secondDate=getTime(date2);	
		//comparing date
		if (firstDate.compareTo(secondDate) > 0) {
            System.out.println("###d1 is after d2##");
            flag= true;
        } else if (firstDate.compareTo(secondDate) < 0) {
            System.out.println("###d1 is before d2###");
            flag= false;
        } 
		return flag;
	}	
	public static boolean compareDate(Date d1,Date d2){
		System.out.println("Comming to Date d1 $$$ "+d1+" d2 $$ "+d2);
		Calendar date1 = Calendar.getInstance();
		date1.setTime(d1);
		Calendar date2 = Calendar.getInstance();
		date2.setTime(d2);	
		boolean flag=false;
		System.out.println("Comming to Date date1 "+date1+" date2 "+date2);
		if(d1.after(d2)){
			 System.out.println("###d1 is after d2##");
			flag=true;			
		}else if(d1.before(d2)){
			 System.out.println("###d1 is before d2###");
			flag=false;		
		}	
		return flag; 
		
	}
}
