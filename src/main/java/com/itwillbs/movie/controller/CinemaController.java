package com.itwillbs.movie.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.movie.service.CinemaService;
import com.itwillbs.movie.service.MovieRegisterService;

@Controller
public class CinemaController {
	@Autowired 
	CinemaService cinemaService; 
	
	@Autowired
	MovieRegisterService movieRegisterService;
	
	@GetMapping("cinemaList")
	public String cinemaList(
			String location_name,
			Model model) {
		
//		System.out.println("==========================");
//		System.out.println(location_name);
		//지역목록
		List<HashMap<String, String>> location = cinemaService.location();
		model.addAttribute("location",location);

		
		
		List<HashMap<String, String>> locationCinema = cinemaService.locationCinema(location_name);
		model.addAttribute("locationCinema",locationCinema);

		//왜 안넘어가지지,..
		System.out.println("=====================================");
		System.out.println(locationCinema);
		System.out.println("=====================================");
		
		
		
		return "cinema/cinema_all";
	}
}
