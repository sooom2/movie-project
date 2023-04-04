package com.itwillbs.movie.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class StoreController {
	

	@RequestMapping(value = "store_main", method = {RequestMethod.GET, RequestMethod.POST})
	public String test2() {
		return "store/store_main";
	}
	
	@RequestMapping(value = "store_detail", method = {RequestMethod.GET, RequestMethod.POST})
	public String store_detail(Map<String, String> map) {
		return "store/store_detail";
	}
	
	@RequestMapping(value = "store_pay", method = {RequestMethod.GET, RequestMethod.POST})
	public String store_pay(Map<String, String> map) {
		return "store/store_pay";
	}
	
	
}
