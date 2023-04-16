package com.itwillbs.movie.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwillbs.movie.service.MovieRegisterService;

@Controller
public class MovieRegisterController {
	@Autowired
	private MovieRegisterService movieRegisterService;
	
	//영화예매관리
	@RequestMapping(value = "admin_movie_comming_register", method = {RequestMethod.GET, RequestMethod.POST})
	public String admin_movie_comming_register() {
		return "admin/admin_movie_comming_register";
	}
	
	
	
	//영화관리페이지
	//영화목록조회
	@RequestMapping(value = "admin_movie_register", method = {RequestMethod.GET, RequestMethod.POST})
	public String movieRegister(Model model) {
		List<HashMap<String, String>> movieList = movieRegisterService.selectMovies();
		model.addAttribute("movieList", movieList);
		return "admin/admin_movie_register";
	}
	
	//영화(1개)조회
	@RequestMapping(value = "selectMovie", method = {RequestMethod.GET, RequestMethod.POST})
	public String selectMovie(@RequestParam String info_movie_code,Model model) {
		System.out.println(info_movie_code);
		
		
		HashMap<String, String> selectMovie = movieRegisterService.selectMovie(info_movie_code);
		
		System.out.println(selectMovie);
		model.addAttribute("selectMovie",selectMovie);
		
		System.out.println(selectMovie);

		return "admin/admin_movie_update";
	}
	
	// 영화 정보 수정
	@RequestMapping(value = "updateMovie", method = {RequestMethod.GET, RequestMethod.POST})
	public String updateMoviePro(@RequestParam HashMap<String, String> movie) {
		System.out.println(movie);
		int updateCount = movieRegisterService.updateMovie(movie);
		return "redirect:/admin_movie_register";
	}

	
	//영화등록
	@RequestMapping(value = "registMoviePro", method = {RequestMethod.GET, RequestMethod.POST})
	public String registMovie(@RequestParam HashMap<String, String> movie) {
		System.out.println(movie);
		int registCount = movieRegisterService.registMovie(movie);
		return "redirect:/admin_movie_register";
	}
	
	//영화삭제
	@RequestMapping(value = "deleteMovie", method = {RequestMethod.GET, RequestMethod.POST})
	public String movieDelete(@RequestParam String info_movie_code,Model model) {
		System.out.println(info_movie_code);
		
		int deleteCount = movieRegisterService.deleteMovie(info_movie_code);
		return "redirect:/admin_movie_register";
	}
	
	
	
	
	//-------------------메인 영화------------------------------------------------------------
	
	
	//-------------------------------------------------------------------------------------------------
	// 영화 일정 ( Movie Schedule )
	//-------------------------------------------------------------------------------------------------
	
	//영화 일정등록 // 영화관 상영관들고오기
	@RequestMapping(value = "movieScheduleUpdate", method = {RequestMethod.GET, RequestMethod.POST})
	public String movieSchedule(Model model,String cinema_name) {
		System.out.println(cinema_name);
		List<HashMap<String, String>> movieList = movieRegisterService.selectMovies();
		model.addAttribute("movieList", movieList);
		List<HashMap<String, String>> cinemaList = movieRegisterService.selectCinema();
		model.addAttribute("cinemaList",cinemaList);
		
		return "admin/admin_movie_schedule_register";
	}
	// 영화관에맞는 상영관 표시
	@ResponseBody
	@RequestMapping(value = "screenSelect",produces = "application/json; charset=utf8",method = {RequestMethod.GET, RequestMethod.POST})
	public List<HashMap<String, String>> screenSelect(
			Model model
			,@RequestParam("cinema_name") String cinema_name
			,@RequestParam("cinema_code") String cinema_code
			 ){
		List<HashMap<String, String>> selectScreen = movieRegisterService.selectScreen(cinema_name);
		System.out.println(selectScreen);
		
		return selectScreen;
	}
	//영화일정등록
	@RequestMapping(value = "movieScheduleRegisterPro", method = {RequestMethod.GET, RequestMethod.POST})
	public String movieSchedulePro(@RequestParam HashMap<String, String> movieSchedule,Model model) throws ParseException {
		HashMap<String, String> selectInfoTime = movieRegisterService.selectMovie(movieSchedule.get("sch_movie_code"));
		
		SimpleDateFormat sdf = new SimpleDateFormat("HH:mm"); //변환형식
		
		Calendar cal = Calendar.getInstance();
		String runningTime = selectInfoTime.get("info_time");
		String strTime2 = movieSchedule.get("sch_start_time");
		Date runTime = sdf.parse(runningTime); //date 변환
		Date startTime = sdf.parse(strTime2); ////date 변환
		
		// 변환한값을 cal객체의 add메서드써서 더함
		cal.setTime(startTime);
		cal.add(Calendar.HOUR_OF_DAY, runTime.getHours());
		cal.add(Calendar.MINUTE, runTime.getMinutes());
//		cal.add(Calendar.SECOND, runTime.getSeconds());
		Date sumDate = cal.getTime();
		
		
		String sch_last_time = movieSchedule.get("sch_last_time");
		sch_last_time = sdf.format(sumDate);
		movieSchedule.put("sch_last_time", sch_last_time);
		
		
		int scheduleRegisterCount = movieRegisterService.scheduleRegister(movieSchedule);
		
		if(scheduleRegisterCount > 0){
			System.out.println("예매등록성공");
		}
		return "redirect:/admin_schedule_register";
	}
	
	//영화일정목록 
 	@RequestMapping(value = "admin_schedule_register", method = {RequestMethod.GET, RequestMethod.POST})
	public String scheduleRegister(Model model) {
		List<HashMap<String, String>> scheduleList = movieRegisterService.selectSchedule();
		model.addAttribute("scheduleList", scheduleList);
		System.out.println(scheduleList);
		
		return "admin/admin_movie_schedule";
	}
 	// 영화일정 페이지 정렬 ======================================================
 	//지점명정렬
 	@RequestMapping(value = "cinemaNameSort", method = {RequestMethod.GET, RequestMethod.POST})
 	public String cinemaNameSort(Model model) {
 		List<HashMap<String, String>> scheduleList = movieRegisterService.cinemaNameSort();
 		model.addAttribute("scheduleList", scheduleList);
 		System.out.println(scheduleList);
 		return "admin/admin_movie_schedule";
 	}
 	
 	//상영관정렬
 	@RequestMapping(value = "screenNameSort", method = {RequestMethod.GET, RequestMethod.POST})
 	public String screenNameSort(Model model) {
 		List<HashMap<String, String>> scheduleList = movieRegisterService.screenNameSort();
 		model.addAttribute("scheduleList", scheduleList);
 		return "admin/admin_movie_schedule";
 	}
 	
 	//상영관정렬
 	@RequestMapping(value = "movieNameSort", method = {RequestMethod.GET, RequestMethod.POST})
 	public String movieNameSort(Model model) {
 		List<HashMap<String, String>> scheduleList = movieRegisterService.movieNameSort();
 		model.addAttribute("scheduleList", scheduleList);
 		return "admin/admin_movie_schedule";
 	}
 	
 	
 	//상영관정렬
 	@RequestMapping(value = "schDateSort", method = {RequestMethod.GET, RequestMethod.POST})
 	public String schDateSort(Model model) {
 		List<HashMap<String, String>> scheduleList = movieRegisterService.schDateSort();
 		model.addAttribute("scheduleList", scheduleList);
 		return "admin/admin_movie_schedule";
 	}
 	// 시작시간정렬
 	@RequestMapping(value = "schStartSort", method = {RequestMethod.GET, RequestMethod.POST})
 	public String schStartSort(Model model) {
 		List<HashMap<String, String>> scheduleList = movieRegisterService.schStartSort();
 		model.addAttribute("scheduleList", scheduleList);
 		return "admin/admin_movie_schedule";
 	}
 	// 마지막시간정렬
 	@RequestMapping(value = "schLastSort", method = {RequestMethod.GET, RequestMethod.POST})
 	public String schLastSort(Model model) {
 		List<HashMap<String, String>> scheduleList = movieRegisterService.schLastSort();
 		model.addAttribute("scheduleList", scheduleList);
 		return "admin/admin_movie_schedule";
 	}
 	// 영화일정 페이지 정렬 ======================================================
 	
 	
	//상영일정 수정 - 상영 상세 정보 (날짜랑 시간만 바꿀수 있음)
	@RequestMapping(value = "selectSchedule", method = {RequestMethod.GET, RequestMethod.POST})
	public String selectSchedule(@RequestParam String sch_code,Model model) {
		System.out.println("selectSchedule");
		HashMap<String, String> selectSchedule = movieRegisterService.detailSchedule(sch_code);
		model.addAttribute("selectSchedule",selectSchedule);
		System.out.println(model);
		return "admin/admin_movie_schedule_update";
	}
	
	
	//영화삭제
	@RequestMapping(value = "deleteSchedule", method = {RequestMethod.GET, RequestMethod.POST})
	public String deleteSchedule(@RequestParam String sch_code,Model model) {
		
		
		int deleteCount = movieRegisterService.deleteSchedule(sch_code);	
		
		return "redirect:/admin_schedule_register";
	}
 	 	
	// 영화 정보 수정
	@RequestMapping(value = "updateSchedule", method = {RequestMethod.GET, RequestMethod.POST})
	public String updateSchedule(@RequestParam HashMap<String, String> schedule, Model model) throws ParseException {
		System.out.println(schedule);
		System.out.println("=============================");
		System.out.println(schedule.get("sch_code"));
		
		HashMap<String, String> selectInfoTime = movieRegisterService.selectSchMovie(schedule.get("sch_code"));
		System.out.println("=============================");
		System.out.println(selectInfoTime);
		System.out.println("=============================");
		
		SimpleDateFormat sdf = new SimpleDateFormat("HH:mm"); //변환형식
		
		Calendar cal = Calendar.getInstance();
		String runningTime = selectInfoTime.get("info_time");
		String strTime2 = schedule.get("sch_start_time");
		Date runTime = sdf.parse(runningTime); //date 변환
		Date startTime = sdf.parse(strTime2); ////date 변환
		
		// 변환한값을 cal객체의 add메서드써서 더함
		cal.setTime(startTime);
		cal.add(Calendar.HOUR_OF_DAY, runTime.getHours());
		cal.add(Calendar.MINUTE, runTime.getMinutes());
		cal.add(Calendar.SECOND, runTime.getSeconds());
		Date sumDate = cal.getTime();
		
		
		String sch_last_time = schedule.get("sch_last_time");
		sch_last_time = sdf.format(sumDate);
		schedule.put("sch_last_time", sch_last_time);
		
		System.out.println("=================제에발================");
		System.out.println(schedule);
		System.out.println("=================제에발================");
		
		int modifyCount = movieRegisterService.movieScheduleUpdatePro(schedule);
		
		return "redirect:/admin_schedule_register";
	}


	// 영화 페이지 정렬=============================================================================
	//지점명정렬
	
//	     
	
	
	// 영화코드정렬
 	@GetMapping(value = "infoMovieCodeSort")
 	public String infoMovieCodeSort(Model model) {
 		List<HashMap<String, String>> movieList = movieRegisterService.infoMovieCodeSort();
 		model.addAttribute("movieList", movieList);
 		return "admin/admin_movie_register";
 	}
 // 영화코드정렬
  	@GetMapping(value = "infoMovieNameSort")
  	public String infoMovieNameSort(Model model) {
  		List<HashMap<String, String>> movieList = movieRegisterService.infoMovieNameSort();
  		model.addAttribute("movieList", movieList);
  		return "admin/admin_movie_register";
  	}
 	
 	// 제작년도
 	@GetMapping(value = "infoYearSort")
 	public String infoYearSort(Model model) {
 		List<HashMap<String, String>> movieList = movieRegisterService.infoYearSort();
 		model.addAttribute("movieList", movieList);
 		return "admin/admin_movie_register";
 	}
 	//상영시간
 	@GetMapping(value = "infoTimeSort")
 	public String infoTimeSort(Model model) {
 		List<HashMap<String, String>> movieList = movieRegisterService.infoTimeSort();
 		model.addAttribute("movieList", movieList);
 		return "admin/admin_movie_register";
 	}
 	@GetMapping(value = "infoShowDateSort")
 	public String infoShowDateSort(Model model) {
 		List<HashMap<String, String>> movieList = movieRegisterService.infoShowDateSort();
 		model.addAttribute("movieList", movieList);
 		return "admin/admin_movie_register";
 	}
 	@GetMapping(value = "infoEndDateSort")
 	public String infoEndDateSort(Model model) {
 		List<HashMap<String, String>> movieList = movieRegisterService.infoEndDateSort();
 		model.addAttribute("movieList", movieList);
 		return "admin/admin_movie_register";
 	}
 	@GetMapping(value = "infoStorySort")
 	public String infoStorySort(Model model) {
 		List<HashMap<String, String>> movieList = movieRegisterService.infoStorySort();
 		model.addAttribute("movieList", movieList);
 		return "admin/admin_movie_register";
 	}
 	
 	
 	
	
}


















