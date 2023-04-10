package com.itwillbs.movie.controller;

import java.util.HashMap;
import java.util.List;

import org.apache.tomcat.util.log.UserDataHelper.Mode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	
	
	
	//영화 일정 관리 // 영화관 상영관들고오기
	@RequestMapping(value = "movieScheduleUpdate", method = {RequestMethod.GET, RequestMethod.POST})
	public String movieSchedule(Model model,String cinema_name) {
		System.out.println(cinema_name);
		List<HashMap<String, String>> movieList = movieRegisterServie.selectMoives();
		model.addAttribute("movieList", movieList);
		List<HashMap<String, String>> cinemaList = movieRegisterServie.selectCinema();
		model.addAttribute("cinemaList",cinemaList);
		
		
		
		return "admin/admin_schedule_update";
	}
	// 영화관에맞는 상영관 표시
	@ResponseBody
	@RequestMapping(value = "screenSelect",produces = "application/json; charset=utf8",method = {RequestMethod.GET, RequestMethod.POST})
	public List<HashMap<String, String>> screenSelect(
			Model model
			,@RequestParam("cinema_name") String cinema_name
			,@RequestParam("cinema_code") String cinema_code
			 ){
		List<HashMap<String, String>> selectScreen = movieRegisterServie.selectScreen(cinema_name);
		System.out.println(selectScreen);
		
		return selectScreen;
	}
	//영화일정등록
	@RequestMapping(value = "movieScheduleUpdatePro", method = {RequestMethod.GET, RequestMethod.POST})
	public String movieSchedulePro(@RequestParam HashMap<String, String> movieSchedule) {
		System.out.println("=============movieSchedulePro=========");
		System.out.println(movieSchedule);
		int scheduleRegisterCount = movieRegisterServie.scheduleRegister(movieSchedule);
		
		if(scheduleRegisterCount > 0){
			System.out.println("예매등록성공");
		}
		
		return "redirect:/admin_schedule_register";
	}
	
	//영화일정목록
	@RequestMapping(value = "admin_schedule_register", method = {RequestMethod.GET, RequestMethod.POST})
	public String scheduleRegister(Model model) {
		List<HashMap<String, String>> scheduleList = movieRegisterServie.selectSchedule();
		List<HashMap<String, String>> movieList = movieRegisterServie.selectMoives();
		List<HashMap<String, String>> cinemaList = movieRegisterServie.selectCinema();
		model.addAttribute("scheduleList", scheduleList);
		model.addAttribute("movieList", movieList);
		model.addAttribute("cinemaList", cinemaList);
		
		return "admin/admin_schedule_register";
	}
	
}
























