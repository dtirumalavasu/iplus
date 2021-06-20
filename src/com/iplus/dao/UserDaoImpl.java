 package com.iplus.dao;

import java.util.ArrayList;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.iplus.model.User;

@Repository("userDao")
@Transactional
public class UserDaoImpl implements UserDao{

	@Autowired
	public SessionFactory sessionFactory;
	
	@Override
	public boolean doRegister(User user) {
		User  u = (User)sessionFactory.getCurrentSession().get(User.class, user.getUserName());
		if(u != null){
			return false;
		}else{
			sessionFactory.getCurrentSession().save(user);
			return true;
		}
	}

	@Override
	public User doLogin(User user) {
		User u=(User) sessionFactory.getCurrentSession().get(User.class,user.getUserName());
		if(u != null){
			if(u.getUserName().equalsIgnoreCase(user.getUserName()) && u.getPassword().equalsIgnoreCase(user.getPassword())){
				return u;
			}else{
				return null;
			}
		}else{
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<User> getUsers() {
		return (ArrayList<User>) sessionFactory.getCurrentSession().createQuery("from User").list();
		
		
		/*ArrayList<User>  user1=new ArrayList<User>();
		user1=(ArrayList<User>)sessionFactory.getCurrentSession().createQuery("from User").list();
		return user1;*/
	}

	@Override
	public User editUser(String username) {
		return (User)sessionFactory.getCurrentSession().get(User.class, username);
	}

	@Override
	public User updateUser(User user) {
		sessionFactory.getCurrentSession().saveOrUpdate(user);
		User u=(User) sessionFactory.getCurrentSession().get(User.class,user.getUserName());
		if(u != null){
			return u;
		}else{
			return null;
		}
	}

	@Override
	public User searchUser(String username) {
		return (User)sessionFactory.getCurrentSession().get(User.class, username);
	}
}

	


	


