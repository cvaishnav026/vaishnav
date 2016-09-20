package com.niit.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.niit.services.ForumService;

@Controller
public class ForumController
{
	@Autowired
	private ForumService forumService;
}