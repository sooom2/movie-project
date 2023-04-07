package com.itwillbs.movie.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.movie.service.StoreService;


@Controller
public class StoreController {
	
	@Autowired
	private StoreService service;
	
	@RequestMapping(value = "store_main", method = {RequestMethod.GET, RequestMethod.POST})
	public String test2() {
		
		List<HashMap<String, String>> item = service.selectItem();
		System.out.println(item);
		
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
