package com.nipun.utilities;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.springframework.beans.MutablePropertyValues;
import org.springframework.beans.factory.support.DefaultListableBeanFactory;
import org.springframework.beans.factory.support.GenericBeanDefinition;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.NumberFormat;
import org.springframework.format.datetime.DateTimeFormatAnnotationFormatterFactory;
import org.springframework.format.number.NumberFormatAnnotationFormatterFactory;
import org.springframework.format.support.DefaultFormattingConversionService;
import org.springframework.validation.DataBinder;

public class GenericBeanDefinitionExample {
	public static void main (String[] args) throws ParseException {
		System.out.println("Start Formatter method");
		DefaultFormattingConversionService conversionService = new DefaultFormattingConversionService(
				true);

		conversionService
				.addFormatterForFieldAnnotation(new NumberFormatAnnotationFormatterFactory());

		conversionService
				.addFormatterForFieldAnnotation(new DateTimeFormatAnnotationFormatterFactory());
		

		MyBean mybean = new MyBean();
		DataBinder dataBinder = new DataBinder(mybean);
		dataBinder.setConversionService(conversionService);
		MutablePropertyValues mpv = new MutablePropertyValues();
		mybean.setDate(new Date());
        mpv.add("date",mybean.getDate());
        mybean.doSomething();
	  }

}
