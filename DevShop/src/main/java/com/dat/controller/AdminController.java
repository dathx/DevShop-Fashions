package com.dat.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	@RequestMapping("/admin")
	public String AdminHome() {
		return "admin/index";
	}
	
	@RequestMapping("/calendar")
	public String calendar() {
		return "admin/calendar";
	}

}
