package com.itwillbs.movie.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.itwillbs.movie.service.BoardService;
import com.itwillbs.movie.service.CinemaService;
import com.itwillbs.movie.service.MovieRegisterService;

@Controller
public class CinemaController {
	@Autowired 
	CinemaService cinemaService; 
	
	@Autowired
	MovieRegisterService movieRegisterService;
	
	
	@GetMapping(value="cinemaList")
	public String cinemaList(
			String location_name,
			Model model) {
		System.out.println(location_name);
		//지역목록
		List<HashMap<String, String>> location = cinemaService.location();
		model.addAttribute("location",location);
		System.out.println(location_name);
		
		
		List<HashMap<String, String>> noticeList = cinemaService.noticeList();
		model.addAttribute("noticeList",noticeList);
		
		// 지역선택했을때 그지점 목록
		List<HashMap<String, String>> locationCinema = cinemaService.locationCinema(location_name);
		System.out.println("모델값 :"+model);
		
		
		
		return "cinema/cinema_all";
	}
	//선택한 지역을 넘겨서 받은결과값 (json)
	@ResponseBody
	@RequestMapping(value = "locationCinema",produces = "application/json; charset=utf8",method = {RequestMethod.GET, RequestMethod.POST})
	public List<HashMap<String, String>> locationCinema(String location_name, Model model){
		List<HashMap<String, String>> locationCinema = cinemaService.locationCinema(location_name);
		return locationCinema;
	}
	
	@GetMapping("/cinemaDetail")
	public String cinemaDetail(@RequestParam("cinema_code") String cinema_code,Model model) {
		System.out.println("==================cinemaDetail===========================");
		System.out.println(cinema_code);
		System.out.println("=====================cinemaDetail========================");
		List<HashMap<String, String>> cinemaDetail = cinemaService.cinemaDetail(cinema_code);
		model.addAttribute("cinema_code",cinema_code);
		model.addAttribute("cinemaDetail",cinemaDetail);
		
		return "cinema/cinema_detail";
	}
	
	
	@GetMapping("/cinemaLocation")
	public String cinemaLocation(@RequestParam("cinema_code") String cinema_code,Model model) throws JsonProcessingException {
		List<HashMap<String, String>> cinemaDetail = cinemaService.cinemaDetail(cinema_code);
		
		//자바스크립트에서 쓸수있도록 json타입으로 변환
		ObjectMapper objectMapper = new ObjectMapper();
		String cinemaDetailJson = objectMapper.writeValueAsString(cinemaDetail);
		
		model.addAttribute("cinemaDetailJson", cinemaDetailJson);
		model.addAttribute("cinema_code",cinema_code);
		model.addAttribute("cinemaDetail",cinemaDetail);
		
		
		return "cinema/cinema_location";
	}
	

	
	@GetMapping("test")
	public String test() {
		return "cinema/test";
	}
	
	
	
	@GetMapping("/cinemaEvent")
	public String cinemaEvent(@RequestParam("cinema_code") String cinema_code,Model model) {
		List<HashMap<String, String>> cinemaDetail = cinemaService.cinemaDetail(cinema_code);
		System.out.println("======================cinemaEvent=======================");
		System.out.println(cinema_code);
		System.out.println("===================cinemaEvent=========================");
		
		//파라미터를 받아온것도 model에넣어주고 / 결과값도 넣어줘야함
		model.addAttribute("cinema_code", cinema_code);
		model.addAttribute("cinemaDetail",cinemaDetail);    
		return "cinema/cinema_event";
	}
	
	@GetMapping("/cinemaPrice")
	public String cinemaPrice(@RequestParam("cinema_code") String cinema_code, Model model) {
		System.out.println("===================cinemaPrice==========================");
		System.out.println(cinema_code);
		System.out.println("===================cinemaPrice==========================");
		
		List<HashMap<String, String>> cinemaDetail = cinemaService.cinemaDetail(cinema_code);
		
		model.addAttribute("cinema_code", cinema_code);
		model.addAttribute("cinemaDetail",cinemaDetail);
		return "cinema/cinema_price";
	}
	
	
	
	
}
