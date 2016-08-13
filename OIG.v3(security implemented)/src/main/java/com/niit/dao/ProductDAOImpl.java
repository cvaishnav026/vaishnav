package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Products;
@Repository
@Transactional
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	public ProductDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}

	public List<Products> list() {
		System.out.println("in product list");
		return null;
	}

	public Products get(String id) {
		System.out.println("to get products");
	
		return null;
	}

	@Transactional
	public void saveOrUpdate(Products product) {
		System.out.println("to add or edit in dao");
		Session s = sessionFactory.getCurrentSession(); 
		Transaction t = s.beginTransaction();
		s.saveOrUpdate(product);
		t.commit();
		
	}

	public void delete(String id) {
		System.out.println("in delete for products in dao");
		
	}

}
