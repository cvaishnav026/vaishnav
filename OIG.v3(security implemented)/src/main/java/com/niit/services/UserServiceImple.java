package com.niit.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.UserDAO;
import com.niit.model.UserDetails;
@Service

public class UserServiceImple implements UserService {
	
	@Autowired
	private UserDAO userDAO;
	
	public UserServiceImple(UserDAO userDAO)
	{
		this.userDAO=userDAO;
	}

	@Transactional
	public void saveOrUpdate(UserDetails userDetails) {
		System.out.println("in service");
		userDAO.saveOrUpdate(userDetails);
		
	}

	@Transactional
	public UserDetails get(String username) {
		// TODO Auto-generated method stub
		return null;
	}

}
