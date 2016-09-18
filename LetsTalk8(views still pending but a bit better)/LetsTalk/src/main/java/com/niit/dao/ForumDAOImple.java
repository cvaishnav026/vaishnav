package com.niit.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

import com.niit.model.Forum;

public class ForumDAOImple implements ForumDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void createNewForum(Forum forum) {

		Session session=sessionFactory.openSession();
		session.save(forum);
		session.flush();
		
	}

	@Override
	public List<Forum> getForumList(String username) {
		Session session=sessionFactory.openSession();
		Criteria c=session.createCriteria(Forum.class);
		c.add(Restrictions.eq("user_name", username));
		List <Forum> forum=c.list();
		return forum;
	}

	@Override
	public void delete(int forumid) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Forum> getForum() {
		List<Forum> forums;
		System.out.println("DAO Implementation");
		Session ss1 = sessionFactory.getCurrentSession();
		Transaction tx = ss1.beginTransaction();
		Query qry = ss1.createQuery("from Forum");
		System.out.println(qry.toString());
		forums = (List<Forum>)qry.list();
		System.out.println("dat is fetching");
		tx.commit();
		return forums;
	}

}
