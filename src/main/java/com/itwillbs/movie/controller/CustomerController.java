package com.itwillbs.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CustomerController {


	// 고객센터홈
	@RequestMapping(value = "cc_home", method = {RequestMethod.GET, RequestMethod.POST})
	public String ccHome() {
		return "customer_center/cc_home";
	}
	// 자주묻는 게시판
	@RequestMapping(value = "faq", method = {RequestMethod.GET, RequestMethod.POST})
	public String faq() {
		return "customer_center/faq";
	}
	// 분실물 문의
	@RequestMapping(value = "lost_board", method = {RequestMethod.GET, RequestMethod.POST})
	public String lostBoard() {
		return "customer_center/lost_board";
	}
	// 1대1문의
	@RequestMapping(value = "oneOnOne", method = {RequestMethod.GET, RequestMethod.POST})
	public String oneOnOne() {
		return "customer_center/oneOnOne";
	}
	// 공지사항
	@RequestMapping(value = "notice_board", method = {RequestMethod.GET, RequestMethod.POST})
	public String noticeBoard() {
		return "customer_center/notice_board";
	}
	// 비회원문의내역
	@RequestMapping(value = "guest_board", method = {RequestMethod.GET, RequestMethod.POST})
	public String guestBoard() {
		return "customer_center/guest_board";
	}
	
	
}
