package com.itwillbs.movie.controller;

import java.util.*;

import org.json.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

import com.itwillbs.movie.service.*;

@Controller
public class ReservationController {
	@Autowired
	private ReservationService service;
	
	// TEST CODE
//	@GetMapping(value = "reservation_test")
//	public String reservation_test(Model model) {
//		List<HashMap<String, String>> cinema = service.selectCinema();
//		model.addAttribute("cinema", cinema);
//		
//		// cinema 값 확인
////		for(Map.Entry<String, String> a : cinema.get(0).entrySet()) {
////			System.out.println(a.getValue());
////		}
//		
//		return "reservation/reservation_test";
//	}
	
	
	@RequestMapping(value = "reservation", method = {RequestMethod.GET, RequestMethod.POST})
	public String reservation(Model model, String cd) {
		// 극장
		List<HashMap<String, String>> cinema = service.selectCinema();
		model.addAttribute("cinema", cinema);
		
		// 영화상세정보
		List<HashMap<String, String>> movieInfo = service.selectMovieInfo();
		model.addAttribute("movieInfo", movieInfo);
		
		
		// cinema 값 확인
//		for(Map.Entry<String, String> a : cinema.get(0).entrySet()) {
//			System.out.println("controller cinema: " + a.getValue());
//		}
		
//		System.out.println(cinema.get(0)); // cinema_code == '1'
		
		return "reservation/reservation";
	}
	
	// 영화리스트
	@ResponseBody
	@GetMapping("moviesList")
	public String moviesList(String cd) {
		System.out.println("String cd: " + cd);
		
		List<HashMap<String, String>> moviesList = service.selectmoviesList(cd);
		
		JSONArray ja = new JSONArray(moviesList);
		System.out.println(ja);
		
		return ja.toString();
	}
	
	// 상영시간리스트
	@ResponseBody
	@GetMapping("movieTimeList")
	public String timeList(String cd) {
		System.out.println("movieTimeList cd : " + cd);
		List<HashMap<String, String>> movieTimeList = service.selectMovieTimeList(cd);
		JSONArray ja = new JSONArray(movieTimeList);
		System.out.println(ja);
		
		return ja.toString();
	}
	
	
	
	@RequestMapping(value = "seat", method = {RequestMethod.GET, RequestMethod.POST})
	public String seat() {
		return "reservation/seat";
	}
	
	
}
