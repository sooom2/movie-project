package com.itwillbs.movie.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.itwillbs.movie.service.MovieService;

@Controller
public class MovieController {
	
	@Autowired
	private MovieService service;
	
	
	//영화목록페이지
	@RequestMapping(value = "screening", method = {RequestMethod.GET, RequestMethod.POST})
	public String screening(Model model) {
		
		List<HashMap<String, String>> movieList = service.selectMovies();
		
		model.addAttribute("movieList",movieList);
		
		
		return "movieBoard/screening";
	}
	
	// 최신개봉순이긴한데 아직 만드는중
	@RequestMapping(value = "latest", method = {RequestMethod.GET, RequestMethod.POST})
	public String latest() {
		return "movieBoard/latest";
	}
	
	@RequestMapping(value = "MovieInfo", method = {RequestMethod.GET, RequestMethod.POST})
	public String movieInfo(@RequestParam String info_movie_code, Model model) {
		HashMap<String, String> movieInfo = service.selectMovie(info_movie_code);
		
		model.addAttribute("movieInfo", movieInfo);
		
		return "movieBoard/movieInfo2";
	}
}
