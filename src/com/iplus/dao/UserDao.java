package com.iplus.dao;

import java.util.ArrayList;

import com.iplus.model.User;

public interface UserDao {
	public boolean doRegister(User user);
	public User doLogin(User user);
	public ArrayList<User> getUsers();
	public User editUser(String username);
	public User updateUser(User user);
	public User searchUser(String username);
	
}
