package com.niit.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.model.UserDetails;
import com.niit.services.UserService;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;

	@RequestMapping("/registering")
	public ModelAndView regtering(@ModelAttribute UserDetails userDetails)
	{
		userDetails.setRole("ROLE_USER");
		System.out.println("entering the service");
		userService.saveOrUpdate(userDetails);
		System.out.println("REGISTRATION DONE");
		return new ModelAndView("registered");
	}
}
