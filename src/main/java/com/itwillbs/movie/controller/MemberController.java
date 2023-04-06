package com.itwillbs.movie.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.movie.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService service;


	@GetMapping(value = "main")
	public String main() {
		return "index";
	}
	
	//회원로그인
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
	
	//회원 로그인 확인
	@PostMapping(value = "loginPro")
	public String loginPro(@RequestParam HashMap<String, String> login, Model model, HttpSession session) {
		
		HashMap<String, String> member = service.checkUser(login);
		
		if(member == null) {
			model.addAttribute("msg", "아이디와 비밀번호가 일치하지 않습니다.");
			return "member/fail_back";
		} else {
			session.setAttribute("sId", member.get("member_id"));
			return "redirect:/main";
		}
		
	}
	// 회원가입폼
	@GetMapping(value = "joinform")
	public String loginform() {
		
		return "member/mem_join_form";
	}
	
	
	// 회원가입 저장
	@PostMapping(value = "joinPro")
	public String joinPro(@RequestParam HashMap<String, String> member, Model model) {
		System.out.println(member);
		
		int insertCount = service.insertMember(member);
		
		model.addAttribute("member", member);
		
		
		return "member/mem_join_success";
	}

	
	// 로그아웃
	@GetMapping(value = "logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/main";
	}
	
	
}
