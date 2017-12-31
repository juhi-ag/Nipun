package com.nipun.crm;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan("com.nipun")
public class NipunResourceConfiguration extends WebMvcConfigurerAdapter 
{

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) 
	{
		  //registry.addResourceHandler("/resource/**").addResourceLocations("classpath:/resource/");
		  registry.addResourceHandler("/script/**")
		    .addResourceLocations("/script/");
		  
	}
	
	@Bean
	 public ViewResolver configureViewResolver() {
	     InternalResourceViewResolver viewResolve = new InternalResourceViewResolver();
	     viewResolve.setPrefix("/WEB-INF/view/");
	     viewResolve.setSuffix(".jsp");

	     return viewResolve;
	 }

	@Override
	 public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer){
	   configurer.enable();
	 }
}
