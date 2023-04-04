package com.itwillbs.movie.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	
	@RequestMapping(value = "main", method = {RequestMethod.GET, RequestMethod.POST})
	public String main() {
		return "index";
	}
	
	
	@RequestMapping(value = "login_form", method = {RequestMethod.GET, RequestMethod.POST})
	public String login_form() {
		return "member/login_form";
	}
	
	
	
	
	
	
}
