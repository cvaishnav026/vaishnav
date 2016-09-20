package com.niit.services;

import java.util.List;

import com.niit.model.User;

public interface UserService {

	public void saveOrUpdate(User user);
	
	public List<User> list();
	
	public User getUserByName(String username);
	
	public User getUserId(int id);

}
