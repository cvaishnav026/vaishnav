package com.niit.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.UserDAO;
import com.niit.model.User;

@Service
@Transactional
public class UserServiceImple implements UserService{
	
	public UserServiceImple()
	{
		
	}
	
	@Autowired
	private UserDAO userdao;

	@Override
	public void saveOrUpdate(User user) {
		System.out.println("in saveorupdate services");
		userdao.saveOrUpdate(user);
		
	}

	@Override
	public List<User> list() {
		// TODO Auto-generated method stub
		return userdao.list();
	}

	@Override
	public User getUserByName(String username) {
		// TODO Auto-generated method stub
		return userdao.getUserByName(username);
	}

	@Override
	public User getUserId(int id) {
		// TODO Auto-generated method stub
		return userdao.getUserId(id);
	}


}
