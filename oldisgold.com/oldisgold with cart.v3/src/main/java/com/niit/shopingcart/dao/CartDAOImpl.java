package com.niit.shopingcart.dao;

import java.util.List;

//import org.h2.engine.Session;
import org.hibernate.Session;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
/*import javax.transaction.Transaction;*/
import com.niit.shopingcart.model.Cart;
import com.niit.shopingcart.model.Category;

@Repository("cartDAO")
public class CartDAOImpl implements CartDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public CartDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Cart> list() {
		@SuppressWarnings("unchecked")
		List<Cart> list = (List<Cart>) sessionFactory.getCurrentSession().createCriteria(Cart.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return list;
	}

	@Transactional
	public void saveOrUpdate(Cart cart) {
		sessionFactory.getCurrentSession().saveOrUpdate(cart);
	}

	@Transactional
	public void delete(String id) {
	/*	Cart cart = new Cart();
		cart.setUserID(id);
		try {
			sessionFactory.getCurrentSession().delete(cart);
		} catch (Exception e) {
			e.printStackTrace();
			return e.getMessage();

		}
		return null;*/
		/*Cart CartToDelete = new Cart();
		CartToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(CartToDelete);*/
		try{
			 
		
		Session session = sessionFactory.openSession();
		Transaction tx = (Transaction) session.beginTransaction();
		Cart c = (Cart) session.load(Cart.class, id);
		session.delete(c);
		tx.commit();
		session.close();
		System.out.println("removed the record from cart successfully");
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

	@Transactional
	public Cart get(String id) {
		String hql = "from Cart where userID=" + "'" + id + "'  and status = " + "O";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Cart> list = (List<Cart>) query.list();

		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}

		return null;
	}

	@Transactional
	public int getTotalAmount(String id) {
		String hql = "select sum(price) from Cart where userID = " + "'" + id + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		/*query.executeUpdate();
		return query.getFirstResult();*/   // Need to check
		
		return 10000;

	}

}
