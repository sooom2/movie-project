package com.itwillbs.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReservationController {

	@RequestMapping(value = "reservation", method = {RequestMethod.GET, RequestMethod.POST})
	public String reservation() {
		return "reservation/reservation";
	}
	@RequestMapping(value = "seat", method = {RequestMethod.GET, RequestMethod.POST})
	public String seat() {
		return "reservation/seat";
	}
	
	
}
