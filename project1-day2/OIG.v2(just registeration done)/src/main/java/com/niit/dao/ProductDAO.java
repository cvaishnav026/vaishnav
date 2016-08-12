package com.niit.dao;

import java.util.List;

import com.niit.model.Products;

public interface ProductDAO {
	
	public List<Products> list();
	
	public Products get(String id);
	
	public void saveOrUpdate(Products product);
	
	public void delete(String id);

}
