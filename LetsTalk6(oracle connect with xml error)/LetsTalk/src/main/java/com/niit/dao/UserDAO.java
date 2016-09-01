package com.niit.dao;

import java.util.List;

import com.niit.model.User;

public interface UserDAO {
	
/*	public void saveorUpdate(User user)*/;
	
	public List<User> list();
	
	public User getUserByName(String username);
	
	public User getUserId(int id);

	void saveOrUpdate(User user);

}
