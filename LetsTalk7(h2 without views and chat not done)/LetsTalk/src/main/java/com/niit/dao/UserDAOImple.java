package com.niit.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.User;

@Repository
@Transactional
public class UserDAOImple implements UserDAO{
	
	public UserDAOImple()
	{
		
	}
	
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
		Session session = this.sessionFactory.getCurrentSession();
		List<User> user = (List<User>) sessionFactory.getCurrentSession().createCriteria(User.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return user;
	}

	@Override
	public User getUserByName(String username) {
		Session session = this.sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		Criteria cr = session.createCriteria(User.class);
		cr.add(Restrictions.eq("username", username));
		List<User> users = cr.list();
		User user = users.get(0);
		System.out.println("User Data="+user.getUsername());
		tx.commit();
		return user;
	}

	@Override
	public User getUserId(int id) {
		Session session=this.sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		User u=(User) session.load(User.class,id);
		System.out.println("data of user by id="+u);
		tx.commit();
		return u;
	}

	/*@Override
	public void saveorUpdate(User user) {
		// TODO Auto-generated method stub
		
	}*/

}
