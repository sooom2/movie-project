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
import com.itwillbs.movie.service.StoreService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService itemService;
	@Autowired
	private StoreService storeService;
	

	@RequestMapping(value = "admin", method = {RequestMethod.GET, RequestMethod.POST})
	public String adminMain() {
		return "admin/admin_main";
	}
	// 스토어======================================================================================
	
	@RequestMapping(value = "admin_item_pay", method = {RequestMethod.GET, RequestMethod.POST})
	public String itemPay() {
		return "admin/admin_item_pay";
	}
	
	// 상품 조회
	@RequestMapping(value = "admin_item_register", method = {RequestMethod.GET, RequestMethod.POST})
	public String itemRegister(Model model) {
		List<HashMap<String, String>> itemList = itemService.selectItem();
		model.addAttribute("itemList", itemList);
		
		return "admin/admin_item_register";
	}
	
	// 상품 등록
	@RequestMapping(value = "admin_item_registerPro", method = {RequestMethod.GET, RequestMethod.POST})
	public String itemRegisterPro(@RequestParam HashMap<String, String> item) {
		
		int registCount = itemService.registItem(item);
		
		return "redirect:/admin_item_register";
	}
	
	// 상품 삭제 
	@RequestMapping(value = "admin_item_delete", method = {RequestMethod.GET, RequestMethod.POST})
	public String itemDelete(String item_code) {
		
		int deleteCount = itemService.deleteItem(item_code);
		
		return "redirect:/admin_item_register";
	}
	
	// 상품 수정 화면
	@RequestMapping(value = "admin_item_update", method = {RequestMethod.GET, RequestMethod.POST})
	public String itemUpdate(@RequestParam String item_code, Model model) {
		
		HashMap<String, String> item = storeService.selectCode(item_code);
		model.addAttribute("item", item);
		
		return "admin/admin_item_update";
	}
	
	// 상품 수정
		@RequestMapping(value = "admin_item_updatePro", method = {RequestMethod.GET, RequestMethod.POST})
		public String itemUpdatePro(@RequestParam HashMap<String, String> item) {
			
			int updateCount = itemService.updateItem(item);
			
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
