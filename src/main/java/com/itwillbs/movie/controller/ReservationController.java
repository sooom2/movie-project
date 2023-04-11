package com.itwillbs.movie.controller;

import java.util.*;

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
	
	
	
	@GetMapping(value = "reservation")
	public String reservation(Model model, String cd) {
		List<HashMap<String, String>> cinema = service.selectCinema();
		model.addAttribute("cinema", cinema);
		
		List<HashMap<String, String>> movieInfo = service.selectMovieInfo();
		model.addAttribute("movieInfo", movieInfo);
		
//		List<HashMap<String, String>> movieTime = service.selectMovieTime();
//		model.addAttribute("movieTime", movieTime);
		
		System.out.println("String cd: " + cd);
		
		HashMap<String, String> movie = service.selectMovie(cd);
		model.addAttribute("movie", movie);
		
		System.out.println(movie);
		
		// cinema 값 확인
//		for(Map.Entry<String, String> a : cinema.get(0).entrySet()) {
//			System.out.println(a.getValue());
//		}
		
//		System.out.println(cinema.get(0)); // cinema_code == '1'
		
		return "reservation/reservation";
	}
	
	
	
	
	
	@RequestMapping(value = "seat", method = {RequestMethod.GET, RequestMethod.POST})
	public String seat() {
		return "reservation/seat";
	}
	
	
}
