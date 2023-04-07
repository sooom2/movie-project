package com.itwillbs.movie.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.movie.service.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService itemService;
	

	@RequestMapping(value = "admin", method = {RequestMethod.GET, RequestMethod.POST})
	public String adminMain() {
		return "admin/admin_main";
	}
	// 스토어======================================================================================
	
	@RequestMapping(value = "admin_item_pay", method = {RequestMethod.GET, RequestMethod.POST})
	public String itemPay() {
		return "admin/admin_item_pay";
	}
	
	@RequestMapping(value = "admin_item_register", method = {RequestMethod.GET, RequestMethod.POST})
	public String itemRegister(Model model) {
		List<HashMap<String, String>> itemList = itemService.selectItem();
		model.addAttribute("itemList", itemList);
		
		return "admin/admin_item_register";
	}
	
	@RequestMapping(value = "admin_item_registerPro", method = {RequestMethod.GET, RequestMethod.POST})
	public String itemRegisterPro(@RequestParam HashMap<String, String> item) {
		
		int registCount = itemService.registItem(item);
		
		
		return "redirect:/admin_item_register";
	}
	
	@RequestMapping(value = "admin_movie_register", method = {RequestMethod.GET, RequestMethod.POST})
	public String movieRegister() {
		return "admin/admin_movie_register";
	}
	
	//영화===========================================================================================
	
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
	
	//게시판============================================================================================
	
}
