package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.User;

@Repository
@Transactional
public class UserDAOImple implements UserDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	

	public void setSessionFactory(SessionFactory sessionFactory) {
		try {
			this.sessionFactory = sessionFactory;
		} catch (Exception e) {
			System.out.println(" Unable to connect to db");
			e.printStackTrace();
		}
	}

	@Transactional
	public void saveOrUpdate(User user) {
		System.out.println("in dao of user");
		Session s =sessionFactory.getCurrentSession();
		Transaction t = s.beginTransaction();
		s.saveOrUpdate(user);
		t.commit();
		
	}

	@Override
	public List<User> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User getUserByName(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User getUserId(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	/*@Override
	public void saveorUpdate(User user) {
		// TODO Auto-generated method stub
		
	}*/

}
