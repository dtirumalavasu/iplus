package com.iplus.intercepter;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

       public class DayIntercepter extends HandlerInterceptorAdapter {
    	     @Override
	         public boolean preHandle(HttpServletRequest req ,
			 HttpServletResponse res,Object handler)throws Exception{
		     Calendar cal=Calendar.getInstance();
		     int dayofweek=cal.get(cal.DAY_OF_WEEK);
		     if(dayofweek ==1){
			 res.getWriter().write("<h1>The website closed on sunday unable to open<h1>");
			 return false;
			                  }
			   
			   return true;   
	         }

            }

