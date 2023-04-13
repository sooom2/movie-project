package com.itwillbs.movie.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.itwillbs.movie.service.CinemaService;
import com.itwillbs.movie.service.MovieRegisterService;

@Controller
public class CinemaController {
	@Autowired 
	CinemaService cinemaService; 
	
	@Autowired
	MovieRegisterService movieRegisterService;
	
	@GetMapping("/cinemaList")
	public String cinemaList(Model model) {
		
		//지점 목록
		
		List<HashMap<String, String>> cinemaList = movieRegisterService.selectCinema();
		model.addAttribute("cinemaList",cinemaList);

		
		//중복되지않는 지역번호 찾기
		List<HashMap<String, String>> locationList = cinemaService.location_find();
		System.out.println("=============================");
		System.out.println(locationList);
		System.out.println("=============================");
		
		//enum  
		
		
		return "cinema/cinema_all";
	}
}
