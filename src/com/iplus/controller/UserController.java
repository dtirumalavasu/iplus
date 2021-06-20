package com.iplus.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.iplus.dao.UserDao;
import com.iplus.model.User;

    @Controller
    public class UserController{
	
	@Autowired
	public UserDao userDao; 
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView openRegister(){
		return new ModelAndView("register");
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView doRegister(@ModelAttribute User user){
		
		ModelAndView modelAndView = new ModelAndView("register");
		
		Boolean b = userDao.doRegister(user);
		if(b){
			modelAndView.addObject("msg", "success");
		}else{
			modelAndView.addObject("msg", "failure");
		}
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView openLogin(){
		return new ModelAndView("login");
	}
	
    @RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView doLogin(@ModelAttribute User user){
    	
    	
    	ModelAndView modelandview ;
    	
    	User u =userDao.doLogin(user);
    	
    	if(u != null){
    		modelandview = new ModelAndView("loginSuccess");
    		modelandview.addObject("user", u);
    		//System.out.println("-----------lll-------"+u.getFirstName());
    	}else{
    		modelandview = new ModelAndView("login");
    		modelandview.addObject("msg","login failure");
    		
    		
    		
    	}
		return modelandview;
	}
    @RequestMapping(value="/viewAllUsers")
	public ModelAndView viewAllUsers(){
    	ModelAndView modelandview = new ModelAndView("viewAllUsers");
    	ArrayList<User> users = userDao.getUsers();
    	if(users != null)
    		modelandview.addObject("users", users);
    	
    	return modelandview;
    }
    
    @RequestMapping(value="/editUser", method = RequestMethod.GET)
	public ModelAndView editUserGet(@RequestParam("username") String username){
    	ModelAndView modelandview = new ModelAndView("editUser");
    	User user = userDao.editUser(username);
    	if(user != null)
    		modelandview.addObject("user", user);
    	
    	return modelandview;
    }
    
    @RequestMapping(value="/updateUser", method = RequestMethod.POST)
	public ModelAndView updateUser(@ModelAttribute User user){
    	ModelAndView modelandview = new ModelAndView("editUser");
    	User u = userDao.updateUser(user);
    	if(u != null){
    		modelandview.addObject("user", u);
    		modelandview.addObject("msg", "success");    		
    	}else{
    		modelandview.addObject("user", user);
    		modelandview.addObject("msg", "failure");
    	}
		return modelandview;
    	
    }
    @RequestMapping(value="/search", method = RequestMethod.POST)
   public ModelAndView searchUser(@RequestParam ("username") String username){
    	ModelAndView modelandview=new ModelAndView("search");
    	User user=userDao.searchUser(username);
    	if(user !=null){
    		modelandview.addObject("user",user);
    		modelandview.addObject("userSearch",username);
    	}else{
    		modelandview.addObject("NOTFOUND","NO USER FOUND..");
    		modelandview.addObject("userSearch",username);
    	}
    	return modelandview;
    	
    	}
    
}
