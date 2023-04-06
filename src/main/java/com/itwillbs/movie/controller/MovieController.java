package com.itwillbs.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MovieController {

	@RequestMapping(value = "screening", method = {RequestMethod.GET, RequestMethod.POST})
	public String screening() {
		return "movieBoard/screening";
	}
	//
	@RequestMapping(value = "latest", method = {RequestMethod.GET, RequestMethod.POST})
	public String latest() {
		return "movieBoard/latest";
	}

}
