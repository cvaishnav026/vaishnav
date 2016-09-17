package com.niit.services;

import java.util.List;

import com.niit.model.Blog;

public interface BlogService {
	
	public void createNewBlog(Blog blog);
	public List<Blog> getBlogList(String blog_username);
	public Blog getBlogById(int blog_id);
	public Blog getBlogByName(String blog_title);
	public void delete(int blog_id);
	public List<Blog> getBlogList();

}
