package com.itwillbs.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {

	@RequestMapping(value = "admin", method = {RequestMethod.GET, RequestMethod.POST})
	public String adminMain() {
		return "admin/admin_main";
	}
	
	@RequestMapping(value = "item_Pay", method = {RequestMethod.GET, RequestMethod.POST})
	public String itemPay() {
		return "admin/itemPay";
	}
	
	@RequestMapping(value = "item_register", method = {RequestMethod.GET, RequestMethod.POST})
	public String itemRegister() {
		return "admin/itemRegister";
	}
	
	
}
