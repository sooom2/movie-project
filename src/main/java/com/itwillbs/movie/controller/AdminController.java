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
	
	
	
	//영화관리
	@RequestMapping(value = "movie_register", method = {RequestMethod.GET, RequestMethod.POST})
	public String movieRegister() {
		return "admin/movieRegister";
	}
	
	//영화관관리
	@RequestMapping(value = "cinema_register", method = {RequestMethod.GET, RequestMethod.POST})
	public String cinemaRegister() {
		return "admin/cinemaRegister";
	}
	
	//상영일정관리
	@RequestMapping(value = "schedule_register", method = {RequestMethod.GET, RequestMethod.POST})
	public String scheduleRegister() {
		return "admin/scheduleRegister";
	}
	
	//영화예매관리
	@RequestMapping(value = "movieRes_register", method = {RequestMethod.GET, RequestMethod.POST})
	public String movieResRegister() {
		return "admin/movieResRegister";
	}
	
	
}
