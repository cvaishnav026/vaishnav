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
/*	@RequestMapping("/home")
	public ModelAndView home1()
	{
		System.out.println("from home");
		return new ModelAndView("home");
	}*/


	@RequestMapping("/signup")
	public ModelAndView signingup()
	{
		System.out.println("register page");
		return new ModelAndView("register");
	}
	@RequestMapping("/login")
	public ModelAndView loginpage()
	{
		System.out.println("login page");
		return new ModelAndView("loginpage");
	}
	@RequestMapping("afterlogin")
	public ModelAndView logged()
	{
		System.out.println("logged in");
		return new ModelAndView("afterlogin");
	}
	@RequestMapping("aboutus")
	public ModelAndView about()
	{
		System.out.println("in about us page");
		return new ModelAndView("aboutus");
	}
}
