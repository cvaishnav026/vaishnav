package com.niit.shopingcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopingcart.dao.UserDAO;
import com.niit.shopingcart.model.UserDetails;



@Controller
@SessionAttributes("userID")
public class UserController {

   @Autowired
	UserDAO userDAO;
   
  /* @RequestMapping("/register")
	public ModelAndView User(@ModelAttribute UserDetails userDetails) {
		userDAO.saveOrUpdate(userDetails);
	  return new ModelAndView("/afterlogin");
	 }*/
    
    @RequestMapping("/isValidUser")
	public ModelAndView isValidUser(@RequestParam(value = "name") String userID,
			@RequestParam(value = "password") String password) {
		System.out.println("in controller");

		String message;
		ModelAndView mv ;
		if (userDAO.isValidUser(userID, password,true)) 
		{
			System.out.println("in mv");
			message = "Valid credentials";
			 mv = new ModelAndView("adminHome");
			 mv.addObject("userID", userID);
		} 
		else if(userDAO.isValidUser(userID, password,false))
		{
		 message = "Valid credentials";
		 mv = new ModelAndView("index1");
		 mv.addObject("userID", userID);
			
		}
		else {
			message = "Invalid credentials";
			 mv = new ModelAndView("invalid");
		}

		mv.addObject("message", message);
		mv.addObject("name", userID);
		return mv;
	}
	
	
	@RequestMapping("/register")
	public ModelAndView registerUser(@ModelAttribute UserDetails userDetails) {
		userDAO.saveOrUpdate(userDetails);
	  return new ModelAndView("/index1");
	 }


}
