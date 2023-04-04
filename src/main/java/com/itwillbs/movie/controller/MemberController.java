package com.itwillbs.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {

	@GetMapping(value = "main")
	public String main() {
		return "index";
	}
	
	@GetMapping(value = "memLogin")
	public String memLogin() {
		return "member/mem_login_form";
	}
	//회원인증폼
	@GetMapping(value = "memAuth")
	public String memAuth() {
		return "member/join_auth_form";
	}
	
	//회원가입폼
	@GetMapping(value = "memJoin")
	public String memJoin() {
		return "member/mem_join_form";
	}
	//예매확인폼
	@GetMapping(value = "guestRsv")
	public String guestRsv() {
		return "member/guest_rsv_form";
	}
	
	//비회원예매하기폼
	@GetMapping(value = "guestJoin")
	public String guestJoin() {
		return "member/guest_join_form";
	}
	
	@PostMapping(value = "loginPro")
	public String loginPro() {
		
		return "redirect:/main";
	}
	@GetMapping(value = "loginform")
	public String loginform() {
		
		return "member/mem_join_form";
	}
	@RequestMapping(value = "admin", method = {RequestMethod.GET,RequestMethod.POST})
	public String admin() {
		
		return "admin/admin_main";
	}
	
	
	
	
}
