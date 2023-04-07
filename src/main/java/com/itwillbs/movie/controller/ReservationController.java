package com.itwillbs.movie.controller;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

import com.itwillbs.movie.service.*;

@Controller
public class ReservationController {
	@Autowired
	private ReservationService service;
	
	
	@RequestMapping(value = "reservation", method = {RequestMethod.GET, RequestMethod.POST})
	public String reservation() {
		List<HashMap<String, String>> cinema = service.selectCinema();
		System.out.println(cinema);
		return "reservation/reservation";
	}
	@RequestMapping(value = "seat", method = {RequestMethod.GET, RequestMethod.POST})
	public String seat() {
		return "reservation/seat";
	}
	
	
}
