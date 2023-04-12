package com.itwillbs.movie.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.movie.service.AdminService;
import com.itwillbs.movie.service.MemberService;
import com.itwillbs.movie.service.StoreService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService itemService;
	@Autowired
	private StoreService storeService;
	
	
	@Autowired
	private MemberService memberService;

	@RequestMapping(value = "admin", method = {RequestMethod.GET, RequestMethod.POST})
	public String adminMain(Model model) {
		
		List<HashMap<String, String>> memberList = memberService.selectMember();
		model.addAttribute("memberList", memberList);
		return "admin/admin_main";
	}
	
	
	
	
	
	// 스토어======================================================================================
	
	
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
	// 상품 결제 내역
	@RequestMapping(value = "admin_item_pay", method = {RequestMethod.GET, RequestMethod.POST})
	public String itemPay(Model model) {
		
		List<HashMap<String, String>> pay = storeService.selectPay();
		model.addAttribute("pay", pay);
		
		return "admin/admin_item_pay";
	}
	
		
	
	
	//영화===========================================================================================

		
	
	
	//영화관관리
	@RequestMapping(value = "admin_cinema_register", method = {RequestMethod.GET, RequestMethod.POST})
	public String cinemaRegister() {
		return "admin/admin_cinema_register";
	}
	
	
	//영화예매관리
	@RequestMapping(value = "admin_movie_res_register", method = {RequestMethod.GET, RequestMethod.POST})
	public String movieResRegister() {
		return "admin/admin_movie_res_register";
	}

	

	
	
	//게시판============================================================================================
	//공지사항
	@RequestMapping(value = "admin_notice_board", method = {RequestMethod.GET, RequestMethod.POST})
	public String adminNoticeBoard() {
		return "admin/admin_notice_board";
	}
	//자주묻는 질문
	@RequestMapping(value = "admin_faq", method = {RequestMethod.GET, RequestMethod.POST})
	public String adminFaq() {
		return "admin/admin_faq";
	}
	//분실물 문의
	@RequestMapping(value = "admin_lost_board", method = {RequestMethod.GET, RequestMethod.POST})
	public String adminLostBoard() {
		return "admin/admin_lost_board";
	}
	//1대1 문의
	@RequestMapping(value = "admin_oneOnOne", method = {RequestMethod.GET, RequestMethod.POST})
	public String adminOneOnOne() {
		return "admin/admin_oneOnOne";
	}
	//비회원 문의내역
	@RequestMapping(value = "admin_guest_board", method = {RequestMethod.GET, RequestMethod.POST})
	public String adminGuestBoard() {
		return "admin/admin_guest_board";
	}	
}
