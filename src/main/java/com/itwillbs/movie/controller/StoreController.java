package com.itwillbs.movie.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class StoreController {
	
	private static final Logger logger = LoggerFactory.getLogger(StoreController.class);

	@RequestMapping(value = "store_main", method = {RequestMethod.GET, RequestMethod.POST})
	public String test2() {
		return "store/store_main";
	}
	
	@RequestMapping(value = "store_detail", method = {RequestMethod.GET, RequestMethod.POST})
	public String store_detail() {
		return "store/store_detail";
	}
	
	
	
	
}
