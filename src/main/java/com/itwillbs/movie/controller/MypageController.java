package com.itwillbs.movie.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.itwillbs.movie.service.MypageService;
import com.itwillbs.movie.vo.MemberVO;

@Controller
public class MypageController {
	
	@Autowired
	private MypageService service;

	//예매내역
	@GetMapping(value = "mypageR")
	public String mypageR(HttpSession session, MemberVO member, Model model) {
		String id = (String)session.getAttribute("sId");
		member= service.getMemberInfo(id);
		model.addAttribute("member", member);
		return "mypage/mypage_rsv_form";
	} 
	//포인트조회
	@GetMapping(value = "mypageP")
	public String mypageP() {
		
		return "mypage/mypage_point_form";
		
	} 
	 
	//스토어구매내역
	@GetMapping(value = "mypageS")
	public String mypageS() {
		
		return "mypage/mypage_store_form";
	}
	
	//내가올린질문
	@GetMapping(value = "mypageQ")
	public String mypageQ() {
		
		return "mypage/mypage_qna_form";
	}
	//회원정보수정
	@GetMapping(value = "mypageI")
	public String mypageI(HttpSession session, Model model) {
		String id = (String)session.getAttribute("sId");
		
		if(id ==null) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			return "member/fail_back";
		}
		
		MemberVO member = service.getMemberInfo(id);
		model.addAttribute("member", member);
		return "mypage/mypage_info_form";
	}
	
	
	//리뷰페이지
	@GetMapping(value = "mypageRv")
	public String mypageRv() {
		
		return "mypage/mypage_review_form";
		
	}
	
	
	
	
	
	
	
	
}
