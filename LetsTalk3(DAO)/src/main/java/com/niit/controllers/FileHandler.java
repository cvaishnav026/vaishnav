package com.niit.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FileHandler {
	@RequestMapping("/")
	public ModelAndView home()
	{
		System.out.println("from home");
		return new ModelAndView("home");
	}

	@RequestMapping("/signup")
	public ModelAndView signingup()
	{
		System.out.println("register page");
		return new ModelAndView("register");
	}
}
