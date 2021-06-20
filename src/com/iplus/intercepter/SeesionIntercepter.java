package com.iplus.intercepter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Component
public class SeesionIntercepter extends HandlerInterceptorAdapter {
	public boolean preHandle(HttpServletRequest req,HttpServletResponse res,Object handle)
	throws Exception{
		
		System.out.println(req.getSession().getMaxInactiveInterval()+"-------------"+req.getSession().getCreationTime());
		req.getSession().setMaxInactiveInterval(60*60);
		return true;
		
	}
}
