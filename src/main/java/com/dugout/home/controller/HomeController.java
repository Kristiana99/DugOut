package com.dugout.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String home() {
		
		return "home" ;	
	}	
	
	
	@GetMapping("/Users/LoginForm")
	public String loginForm() {
		return "users/login";
	}
}