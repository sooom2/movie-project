package com.itwillbs.movie.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.movie.service.StoreService;


@Controller
public class StoreController {
	
	@Autowired
	private StoreService service;
	
	
	// 상품별 DB 조회 후 리스트 출력.
	@RequestMapping(value = "store_main", method = {RequestMethod.GET, RequestMethod.POST})
	public String test2(Model model) {
		
		List<HashMap<String, String>> gift = service.selectItem();
		List<HashMap<String, String>> food = service.selectFood();
		List<HashMap<String, String>> ticket = service.selectTicket();
		model.addAttribute("gift", gift);
		model.addAttribute("food", food);
		model.addAttribute("ticket", ticket);
		
		
		return "store/store_main";
	}
	
	// 상품 데이터를 받아 상세페이지 출력.
	@RequestMapping(value = "store_detail", method = {RequestMethod.GET, RequestMethod.POST})
	public String store_detail(@RequestParam String item_code, Model model) {
		
		HashMap<String, String> item = service.selectCode(item_code);
		model.addAttribute("item", item);
		
		return "store/store_detail";
	}
	
	
	
	@RequestMapping(value = "store_pay", method = {RequestMethod.GET, RequestMethod.POST})
	public String store_pay(@RequestParam String item_code, @RequestParam String item_price, Model model) {
		HashMap<String, String> item = service.selectCode(item_code);
		model.addAttribute("item", item);
		model.addAttribute("item_price", item_price);
		
		return "store/store_pay";
	}
	
	
}
