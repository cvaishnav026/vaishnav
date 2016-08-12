package com.niit.services;

import com.niit.model.UserDetails;

public interface UserService {

public void saveOrUpdate(UserDetails userDetails);
	
	public UserDetails get(String username);
}
