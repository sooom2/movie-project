package com.itwillbs.movie.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
		// 지역선택했을때 그지점 목록
		List<HashMap<String, String>> locationCinema = cinemaService.locationCinema(location_name);
		System.out.println("모델값 :"+model);
		
		return "cinema/cinema_all";
	}
	
	@ResponseBody
	@RequestMapping(value = "locationCinema",produces = "application/json; charset=utf8",method = {RequestMethod.GET, RequestMethod.POST})
	public List<HashMap<String, String>> locationCinema(String location_name, Model model){
		
		List<HashMap<String, String>> locationCinema = cinemaService.locationCinema(location_name);
		System.out.println(locationCinema);
		
		return locationCinema;
	}
	
}
