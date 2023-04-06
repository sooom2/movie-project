package com.itwillbs.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CustomerController {
	
	@RequestMapping(value = "cc_home", method = {RequestMethod.GET, RequestMethod.POST})
	public String ccHome() {
		return "customer_center/cc_home";
	}
	@RequestMapping(value = "faq", method = {RequestMethod.GET, RequestMethod.POST})
	public String faq() {
		return "customer_center/faq";
	}
	@RequestMapping(value = "lost_boar", method = {RequestMethod.GET, RequestMethod.POST})
	public String lostBoar() {
		return "customer_center/lost_boar";
	}
	@RequestMapping(value = "oneOnOne", method = {RequestMethod.GET, RequestMethod.POST})
	public String oneOnOne() {
		return "customer_center/oneOnOne";
	}
	@RequestMapping(value = "notice_board", method = {RequestMethod.GET, RequestMethod.POST})
	public String noticeBoard() {
		return "customer_center/notice_board";
	}
	
	
	
}
