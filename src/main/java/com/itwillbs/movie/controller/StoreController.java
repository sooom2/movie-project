package com.itwillbs.movie.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

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
	
	
	// 스토어 결제
	@RequestMapping(value = "store_pay", method = {RequestMethod.GET, RequestMethod.POST})
	public String store_pay(@RequestParam String item_code, @RequestParam String item_price, HttpSession session, Model model) {
		HashMap<String, String> item = service.selectCode(item_code);
		String id = (String)session.getAttribute("sId");
		HashMap<String, String> member = service.selectMemberId(id);
		model.addAttribute("item", item);
		model.addAttribute("item_price", item_price);
		model.addAttribute("member", member);
		
		if(id == null) {
			model.addAttribute("msg", "로그인 후 이용가능합니다.");
			return "member/fail_back";
		} else {
			return "store/store_pay";
		}
		
		
	}
	
	// 결제 성공
	@RequestMapping(value = "store_paySuccess", method = {RequestMethod.GET, RequestMethod.POST})
	public String store_paySuccess(@RequestParam HashMap<String, String> pay, HttpSession session, Model model) {
		String id = (String)session.getAttribute("sId");
		HashMap<String, String> member = service.selectMemberId(id);
		pay.put("id", id);
		int insertPay = service.insertPay(pay);
		
		// 포인트 적립
		HashMap<String, String> point = new HashMap<String, String>();
		String pointResult = (Integer.parseInt(member.get("member_point")) + Integer.parseInt(pay.get("pay_price")) / 10) + "";
		point.put("id", id);
		point.put("point", pointResult);
		int updatePoint = service.updatePoint(point);
		pay.put("point", (Integer.parseInt(pay.get("pay_price")) / 10) + "");

		model.addAttribute("member", member);
		model.addAttribute("pay", pay);
		
		return "store/store_paySuccess";
	}
	
	
}
