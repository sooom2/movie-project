package com.itwillbs.movie.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.movie.service.MovieRegisterServie;
import com.itwillbs.movie.service.MovieService;

@Controller
public class MovieRegisterController {
	@Autowired
	private MovieRegisterServie movieRegisterServie;
	
	
	//영화관리페이지
	//영화목록조회
	@RequestMapping(value = "admin_movie_register", method = {RequestMethod.GET, RequestMethod.POST})
	public String movieRegister(Model model) {
		List<HashMap<String, String>> movieList = movieRegisterServie.selectMoives();
		model.addAttribute("movieList", movieList);
		return "admin/admin_movie_register";
	}
	
	//영화(1개)조회
	@RequestMapping(value = "selectMovie", method = {RequestMethod.GET, RequestMethod.POST})
	public String selectMovie(@RequestParam String info_movie_code,Model model) {
		System.out.println(info_movie_code);
		
		
		HashMap<String, String> selectMovie = movieRegisterServie.selectMovie(info_movie_code);
		
		System.out.println(selectMovie);
		model.addAttribute("selectMovie",selectMovie);
		
		System.out.println(selectMovie);

		return "admin/admin_movie_update";
	}
	
	// 영화 정보 수정
		@RequestMapping(value = "updateMovie", method = {RequestMethod.GET, RequestMethod.POST})
		public String updateMoviePro(@RequestParam HashMap<String, String> movie) {
			
			System.out.println("ddddddddd"+movie);
			
			int updateCount = movieRegisterServie.updateMovie(movie);
			
			return "redirect:/admin_movie_register";
		}

	
	
	//영화등록
	@RequestMapping(value = "registMoviePro", method = {RequestMethod.GET, RequestMethod.POST})
	public String registMovie(@RequestParam HashMap<String, String> movie) {
		int registCount = movieRegisterServie.registMovie(movie);
		return "redirect:/admin_movie_register";
	}
	
	//영화삭제
	@RequestMapping(value = "deleteMovie", method = {RequestMethod.GET, RequestMethod.POST})
	public String movieDelete(String info_movie_code) {
		int deleteCount = movieRegisterServie.deleteMovie(info_movie_code);
		
		return "redirect:/admin_movie_register";
	}
	
	
	
	
	//-------------------메인 영화------------------------------------------------------------
	
	@RequestMapping(value = "/", method = {RequestMethod.GET, RequestMethod.POST})
	public String screening(Model model) {
		System.out.println("dddd...");
//		List<HashMap<String, String>> movieList = service.screeningMovie();
//		
//		model.addAttribute("movie",movieList);
//		System.out.println(model);
//		
		
		return "index";
	}
	
	
}
























