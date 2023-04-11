package com.itwillbs.movie.controller;

import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwillbs.movie.service.MovieRegisterServie;

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
		
		int updateCount = movieRegisterServie.updateMovie(movie);
		return "redirect:/admin_movie_register";
	}

	
	
	//영화등록
	@RequestMapping(value = "registMoviePro", method = {RequestMethod.GET, RequestMethod.POST})
	public String registMovie(@RequestParam HashMap<String, String> movie) {
		System.out.println(movie);
		int registCount = movieRegisterServie.registMovie(movie);
		return "redirect:/admin_movie_register";
	}
	
	//영화삭제
	@RequestMapping(value = "deleteMovie", method = {RequestMethod.GET, RequestMethod.POST})
	public String movieDelete(@RequestParam String info_movie_code,Model model) {
		System.out.println(info_movie_code);
		
		model.addAttribute("target", "deleteMovie");
		
		int deleteCount = movieRegisterServie.deleteMovie(info_movie_code);
//		if(deleteCount > 0) {
//			
//			model.addAttribute("msg", "삭제하");
//			
//		}
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
	
	//-------------------------------------------------------------------------------------------------
	// 영화 일정 ( Movie Schedule )
	//-------------------------------------------------------------------------------------------------
	
	//영화 일정등록 // 영화관 상영관들고오기
	@RequestMapping(value = "movieScheduleUpdate", method = {RequestMethod.GET, RequestMethod.POST})
	public String movieSchedule(Model model,String cinema_name) {
		System.out.println(cinema_name);
		List<HashMap<String, String>> movieList = movieRegisterServie.selectMoives();
		model.addAttribute("movieList", movieList);
		List<HashMap<String, String>> cinemaList = movieRegisterServie.selectCinema();
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
		List<HashMap<String, String>> selectScreen = movieRegisterServie.selectScreen(cinema_name);
		System.out.println(selectScreen);
		
		return selectScreen;
	}
	//영화일정등록
	@RequestMapping(value = "movieScheduleRegisterPro", method = {RequestMethod.GET, RequestMethod.POST})
	public String movieSchedulePro(@RequestParam HashMap<String, String> movieSchedule) throws ParseException {
		System.out.println("=============movieSchedulePro=========");
//		System.out.println(movieSchedule);
//		System.out.println(movieSchedule.get("sch_start_time"));
		HashMap<String, String> selectInfoTime = movieRegisterServie.selectMovie(movieSchedule.get("sch_movie_code"));
//		System.out.println(date+"Dddddddddddddddddddd");
		//영화상영시간 "121"
		
		
		String timeStr = selectInfoTime.get("info_time"); // 입력 문자열
		
		
		
		int minutes = Integer.parseInt(timeStr); // 분 단위로 변환
		long info_time_sec = minutes * 60; //초
		
		
		
		SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");

		Date date = sdf.parse(movieSchedule.get("sch_start_time"));

		long startTimeSeconds = date.getTime();
		
		System.out.println("==========================================================");
		System.out.println(startTimeSeconds);
		
		

		// 분:초 형태의 문자열로 변환하기
		
		
		System.out.println("==========================================================");
		// Date 객체로 변환
//		Date date = new Date(0, 0, 0, hours, remainingMinutes, 0);

//		System.out.println("==========================================================");
//		System.out.println(date);
		// SimpleDateFormat 클래스를 사용하여 문자열로 변환
//		SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
//		String formattedTime = sdf.format(date);
//
		System.out.println("==========================================================");
//		
//		System.out.println(formattedTime);
//		
		System.out.println("==========================================================");
		System.out.println(movieSchedule.get("sch_start_time"));
//		String dateString = movieSchedule.get("sch_start_time");
//		System.out.println(dateString);
//		DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		Date date2 = format.parse(dateString);
//		System.out.println(date2);
//		System.out.println("==========================================================");
		 String sch_last_time = movieSchedule.get("sch_last_time");
//		 sch_last_time = movieSchedule.get("sch_start_time") + info_time;
//		 
//		 String str = selectInfoTime.get("info_time"); // 숫자 string 값
//        int num = Integer.parseInt(str)*60; // 정수형으로 변환
//        
//        
//        String timeStr = movieSchedule.get("sch_start_time"); // 변환할 시간 문자열
//        String pattern = "HH:mm"; 
//
//        
//        SimpleDateFormat sdf = new SimpleDateFormat(pattern);
//        try {
//            Date date = sdf.parse(timeStr); // 문자열을 Date 객체로 변환
//            System.out.println(date);
//            
////            date + 
//            System.out.println("==========================================================");
//            
//            long timestamp = date.getTime() / 1000 / 60 ; // 타임스탬프(초 단위)를 구함
//            System.out.println(num); // 정수
//            System.out.println("==========================================================");
//            System.out.println(timestamp);
//            
//            long result = num + timestamp; // 숫자와 타임스탬프 값을 더함
//            System.out.println(result); // 더한 결과를 출력
//            System.out.println("==========================================================");
//            
//            
//            
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
        
        //
		 
		 
		 
		 
		 
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
		model.addAttribute("scheduleList", scheduleList);
		System.out.println(scheduleList);
		
		return "admin/admin_movie_schedule";
	}
 	
 	//지점명정렬
 	@RequestMapping(value = "cinemaNameSort", method = {RequestMethod.GET, RequestMethod.POST})
 	public String cinemaNameSort(Model model) {
 		List<HashMap<String, String>> scheduleList = movieRegisterServie.cinemaNameSort();
 		model.addAttribute("scheduleList", scheduleList);
 		System.out.println(scheduleList);
 		return "admin/admin_movie_schedule";
 	}
 	
 	//상영관정렬
 	@RequestMapping(value = "screenNameSort", method = {RequestMethod.GET, RequestMethod.POST})
 	public String screenNameSort(Model model) {
 		List<HashMap<String, String>> scheduleList = movieRegisterServie.screenNameSort();
 		model.addAttribute("scheduleList", scheduleList);
 		return "admin/admin_movie_schedule";
 	}
 	
 	//상영관정렬
 	@RequestMapping(value = "movieNameSort", method = {RequestMethod.GET, RequestMethod.POST})
 	public String movieNameSort(Model model) {
 		List<HashMap<String, String>> scheduleList = movieRegisterServie.movieNameSort();
 		model.addAttribute("scheduleList", scheduleList);
 		return "admin/admin_movie_schedule";
 	}
 	
 	
 	//상영관정렬
 	@RequestMapping(value = "schDateSort", method = {RequestMethod.GET, RequestMethod.POST})
 	public String schDateSort(Model model) {
 		List<HashMap<String, String>> scheduleList = movieRegisterServie.schDateSort();
 		model.addAttribute("scheduleList", scheduleList);
 		return "admin/admin_movie_schedule";
 	}
 	// 시작시간정렬
 	@RequestMapping(value = "schStartSort", method = {RequestMethod.GET, RequestMethod.POST})
 	public String schStartSort(Model model) {
 		List<HashMap<String, String>> scheduleList = movieRegisterServie.schStartSort();
 		model.addAttribute("scheduleList", scheduleList);
 		return "admin/admin_movie_schedule";
 	}
 	// 마지막시간정렬
 	@RequestMapping(value = "schLastSort", method = {RequestMethod.GET, RequestMethod.POST})
 	public String schLastSort(Model model) {
 		List<HashMap<String, String>> scheduleList = movieRegisterServie.schLastSort();
 		model.addAttribute("scheduleList", scheduleList);
 		return "admin/admin_movie_schedule";
 	}
 	
 	
	//상영일정 수정 - 상영 상세 정보 (날짜랑 시간만 바꿀수 있음)
	@RequestMapping(value = "selectSchedule", method = {RequestMethod.GET, RequestMethod.POST})
	public String selectSchedule(@RequestParam String sch_code,Model model) {
		
		HashMap<String, String> selectSchedule = movieRegisterServie.selectSchedule(sch_code);
		
		model.addAttribute("selectSchedule",selectSchedule);
		System.out.println(model);
		return "admin/admin_movie_schedule_update";
	}
	
	//상영일정 수정
//	@RequestMapping(value = "movieScheduleUpdatePro", method = {RequestMethod.GET, RequestMethod.POST})
//	public String movieScheduleUpdatePro(@RequestParam HashMap<String, String> schedule) {
//		System.out.println(schedule);
//		int modifyCount = movieRegisterServie.movieScheduleUpdatePro(schedule);
		
		
//		return "";
//	}
	

	
	//영화삭제
	@RequestMapping(value = "deleteSchedule", method = {RequestMethod.GET, RequestMethod.POST})
	public String deleteSchedule(@RequestParam String sch_code,Model model) {
		
		model.addAttribute("msg", "삭제하시겠습니까");
		model.addAttribute("target","deleteSchedule");
		
		int deleteCount = movieRegisterServie.deleteSchedule(sch_code);	

		
		
		return "redirect:/admin_schedule_register";
	}
 	 	




}


















