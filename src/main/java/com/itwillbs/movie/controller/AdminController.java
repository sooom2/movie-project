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
	
	@RequestMapping(value = "admin_item_pay", method = {RequestMethod.GET, RequestMethod.POST})
	public String itemPay() {
		return "admin/admin_item_pay";
	}
	
	@RequestMapping(value = "admin_item_register", method = {RequestMethod.GET, RequestMethod.POST})
	public String itemRegister() {
		return "admin/admin_item_register";
	}
	
	//영화관리
	@RequestMapping(value = "admin_movie_register", method = {RequestMethod.GET, RequestMethod.POST})
	public String movieRegister() {
		return "admin/admin_movie_register";
	}
	
	//영화관관리
	@RequestMapping(value = "admin_cinema_register", method = {RequestMethod.GET, RequestMethod.POST})
	public String cinemaRegister() {
		return "admin/admin_cinema_register";
	}
	
	//상영일정관리
	@RequestMapping(value = "admin_schedule_register", method = {RequestMethod.GET, RequestMethod.POST})
	public String scheduleRegister() {
		return "admin/admin_schedule_register";
	}
	
	//영화예매관리
	@RequestMapping(value = "admin_movie_res_register", method = {RequestMethod.GET, RequestMethod.POST})
	public String movieResRegister() {
		return "admin/admin_movie_res_register";
	}
	
	
}
