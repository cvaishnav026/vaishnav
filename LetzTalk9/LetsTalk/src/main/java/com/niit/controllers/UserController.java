package com.niit.controllers;

import java.io.File;
import java.io.IOException;
import java.security.Principal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.model.User;
import com.niit.services.UserService;

@Controller
public class UserController {
	
	ModelAndView mv; 

	@Autowired
	UserService userserivce;
	@RequestMapping("/register")
	public String createUser(@ModelAttribute User user,HttpServletRequest request, MultipartFile file) throws IOException
	{
		System.out.println("in register controller");
	
	    		user.setRole("ROLE_USER");
	    		user.setActive(true);
	            userserivce.saveOrUpdate(user);
	    		System.out.println("Data Inserted");
	            //String path = request.getSession().getServletContext().getRealPath("/resources/images/" + user.getUserid() + ".jpg");
	    		MultipartFile image = user.getImage();
	            //Path path;
	            String path = request.getSession().getServletContext().getRealPath("WEB-INF/resources/images/"+user.getId()+".jpg");
	            System.out.println("Path="+path);
	            System.out.println("File name = " + user.getImage().getOriginalFilename());
	          
	            if(image!=null && !image.isEmpty())
	            {
	            	try
	            	{
	            		image.transferTo(new File(path.toString()));
	            		System.out.println("Image saved  in:"+path.toString());
	            	}
	            	catch(Exception e)
	            	{
	            		e.printStackTrace();
	            		System.out.println("Image not saved");
	            	}
	            }
	    	
	     	    
	    return "registerd";
	
		
	}
	@ModelAttribute("user")
	public  User returnObject()
	{
		return new User();
	}

	@RequestMapping("/userProfile")
	public ModelAndView userprofile(Principal p)
	{
		 System.out.println(p);
		  	System.out.println("Name:"+p.getName());
		  	User user = userserivce.getUserByName(p.getName());
		  	int id = user.getId();
		  	User user1 = userserivce.getUserId(id);
		  	System.out.println("user info="+user1);
		  	
		   mv = new ModelAndView("profile","userdata",user1);

		  System.out.println("i am in wall");
		  return mv;
	}
	
}
