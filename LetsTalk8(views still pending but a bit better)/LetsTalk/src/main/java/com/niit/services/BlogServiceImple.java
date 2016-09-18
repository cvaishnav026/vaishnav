package com.niit.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.BlogDAO;
import com.niit.model.Blog;

@Service
@Transactional
public class BlogServiceImple implements BlogService {
	
	@Autowired
	private BlogDAO blogDAO;

	@Override
	public void createNewBlog(Blog blog) {
		System.out.println("creating a blog");
		blogDAO.createNewBlog(blog);
		
	}

	@Override
	public List<Blog> getBlogList(String blog_username) {
		return blogDAO.getBlogList(blog_username);
	}

	@Override
	public Blog getBlogById(int blog_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Blog getBlogByName(String blog_title) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(int blog_id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Blog> getBlogList() {
		// TODO Auto-generated method stub
		return null;
	}

}
