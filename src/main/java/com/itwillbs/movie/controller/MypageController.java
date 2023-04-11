package com.itwillbs.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MypageController {

	//예매내역
	@GetMapping(value = "mypageR")
	public String mypageR() {
		
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
	public String mypageI() {
		
		return "mypage/mypage_info_form";
	}
	//리뷰페이지
	@GetMapping(value = "mypageRv")
	public String mypageRv() {
		
		return "mypage/mypage_review_form";
		
	}
	
	
	
	
	
	
	
	
}
