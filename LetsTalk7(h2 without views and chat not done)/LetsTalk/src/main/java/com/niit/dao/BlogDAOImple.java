package com.niit.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Blog;

@Repository
@Transactional
public class BlogDAOImple implements BlogDAO {
	
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
	@Override
	public void createNewBlog(Blog blog) {
		Session session= sessionFactory.getCurrentSession();
		Transaction t = session.beginTransaction();
		System.out.println(blog);
		session.saveOrUpdate(blog);
		t.commit();
		
	}

	@Override
	public List<Blog> getBlogList(String blog_username) {
		@SuppressWarnings("unused")
		Session session=this.sessionFactory.getCurrentSession();
		 @SuppressWarnings("unchecked")
		List<Blog> blog = (List<Blog>) sessionFactory.getCurrentSession().createCriteria(Blog.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		 return blog;
	}



	@Override
	public void delete(int blog_id) {
		Blog blog = new Blog();
		sessionFactory.getCurrentSession().delete(blog);
		System.out.println("deleted success");
		
	}

	List<Blog> blogs;
	@SuppressWarnings("unchecked")
	@Override
	public List<Blog> getBlogList() {
		System.out.println("DAO Implementation");
		Session ss1 = sessionFactory.openSession();
		Query qry = ss1.createQuery("from Blog");
		System.out.println(qry.toString());
		blogs = (List<Blog>)qry.list();
		return blogs;
	}
	@Override
	public Blog getBlogById(int blog_id) {
		Session session=this.sessionFactory.getCurrentSession();
		Blog b=(Blog) session.load(Blog.class,blog_id);
		System.out.println("data of blog by id="+b);
		return b;
	}
	@Override
	public Blog getBlogByName(String blog_title) {
		System.out.println("getting data in dao based on name");
		Session session=this.sessionFactory.getCurrentSession();
		Blog blog = (Blog) session.get(Blog.class, blog_title);
		return blog;
	}

}
