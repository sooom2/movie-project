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
	
	
	@GetMapping(value = "reservation")
	public String reservation(Model model) {
		List<HashMap<String, String>> cinema = service.selectCinema();
		model.addAttribute(cinema);
		
		// cinema 값 확인
//		for(Map.Entry<String, String> a : cinema.get(0).entrySet()) {
//			System.out.println(a.getValue());
//		}
		
		return "reservation/reservation";
	}
	@RequestMapping(value = "seat", method = {RequestMethod.GET, RequestMethod.POST})
	public String seat() {
		return "reservation/seat";
	}
	
	
}
