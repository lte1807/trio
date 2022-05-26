package com.project.trio.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {
	
	@GetMapping("/auth/adminlogin")
	public String adminlogin() {
		return "admin/adminlogin";
	}
	
}
