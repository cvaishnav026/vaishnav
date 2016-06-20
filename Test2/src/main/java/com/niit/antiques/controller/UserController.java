package com.niit.antiques.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.antiques.dao.UserDAO;

@Controller
public class UserController {
	@Autowired
	UserDAO userDao;

	@RequestMapping("/isValidUser")
	public ModelAndView showMessage(@RequestParam(value = "name") String name,
			@RequestParam(value = "password") String password) {
		System.out.println("in controller");

		String message;
		ModelAndView mv;

		if (userDao.isValidUser(name, password)) {
			message = "Valid credentials";
			mv = new ModelAndView("success");
		} else {
			message = "Invalid credentials";
			mv = new ModelAndView("Login");

		}
		mv.addObject("message", message);
		mv.addObject("name", name);
		return mv;
	}
}
