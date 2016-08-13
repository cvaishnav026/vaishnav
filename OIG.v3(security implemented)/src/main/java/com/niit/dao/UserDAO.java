package com.niit.dao;

import com.niit.model.UserDetails;

public interface UserDAO {

	public void saveOrUpdate(UserDetails userDetails);
	
	public UserDetails get(String username);
	
	
}
