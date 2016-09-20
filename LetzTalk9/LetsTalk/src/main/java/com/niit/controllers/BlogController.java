package com.niit.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.niit.model.Blog;
import com.niit.services.BlogService;

@Controller
public class BlogController {

	@Autowired
	private BlogService blogService;
	
	@RequestMapping("/newBlog")
	public String createBlog(HttpServletRequest request,Model model)
	{
		String name=request.getParameter("blog");
		model.addAttribute("name",name);
		System.out.println("In Blog Controller");
		return "BlogPage";
	}
	
	@ModelAttribute("blog")
	public Blog returnObject()
	{
		return new Blog();
	}
	
	@RequestMapping("/post_blog")
	public String postblog(@ModelAttribute("blog") Blog blog , Model model) throws IOException
	{
		System.out.println("I am in blogpost");
		blog.setBlog_username("hai");
		blog.setBlog_creationTime(new java.util.Date());
		blogService.createNewBlog(blog);
		
		return "BlogPage";
	}
	String setName;
	
	List<Blog> blist;
	@RequestMapping("/GsonCon")
	public @ResponseBody String getValues()throws Exception
	{
		String result = "";
		
			
			blist = blogService.getBlogList();
			Gson gson = new Gson();			  
			result = gson.toJson(blist);			
		
		
		return result;
	}
}
