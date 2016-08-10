package com.niit.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FileHandler {

	@RequestMapping("/")
	public ModelAndView homepage()
	{
		System.out.println("in hompage contoler");
		return new ModelAndView("home");
	}
    
}
