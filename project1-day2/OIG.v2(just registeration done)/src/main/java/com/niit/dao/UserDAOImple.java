package com.niit.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.UserDetails;


@Repository
public class UserDAOImple implements UserDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public UserDAOImple(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	@Transactional
	public void saveOrUpdate(UserDetails userDetails) {
		
		System.out.println("in dao of user");
		
		Session s =sessionFactory.getCurrentSession();
		Transaction t = s.beginTransaction();
		s.saveOrUpdate(userDetails);
		t.commit();
		
	}
	@Transactional
	public UserDetails get(String username) {
		// TODO Auto-generated method stub
		return null;
	}

}
