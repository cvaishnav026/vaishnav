package com.niit.antiques.dao;

import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {

	public  boolean isValidUser(String name, String password)
	{
		if(name.equals("VAISHNAV") && password.equals("12345678"))
		{
			return true;
		}
		else
		{ 
			return false;
		}
	}
}
