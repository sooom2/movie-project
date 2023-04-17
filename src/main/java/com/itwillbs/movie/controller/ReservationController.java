package com.itwillbs.movie.controller;

import java.util.*;

import org.apache.ibatis.annotations.*;
import org.json.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

import com.itwillbs.movie.service.*;

@Controller
public class ReservationController {
	@Autowired
	private ReservationService service;
	
	// TEST CODE
//	@GetMapping(value = "reservation_test")
//	public String reservation_test(Model model) {
//		List<HashMap<String, String>> cinema = service.selectCinema();
//		model.addAttribute("cinema", cinema);
//		
//		// cinema 값 확인
////		for(Map.Entry<String, String> a : cinema.get(0).entrySet()) {
////			System.out.println(a.getValue());
////		}
//		
//		return "reservation/reservation_test";
//	}
	
	
	@RequestMapping(value = "reservation", method = {RequestMethod.GET, RequestMethod.POST})
	public String reservation(Model model, String cd) {
		// 극장
		List<HashMap<String, String>> cinema = service.selectCinema();
		model.addAttribute("cinema", cinema);
		
		// 영화상세정보
		List<HashMap<String, String>> movieInfo = service.selectMovieInfo();
		model.addAttribute("movieInfo", movieInfo);
		
		
		// cinema 값 확인
//		for(Map.Entry<String, String> a : cinema.get(0).entrySet()) {
//			System.out.println("controller cinema: " + a.getValue());
//		}
		
//		System.out.println(cinema.get(0)); // cinema_code == '1'
		
		return "reservation/reservation";
	}
	
	// 영화리스트
	@ResponseBody
	@GetMapping("moviesList")
	public String moviesList(String CnItemCd) {
//		System.out.println("String CnItemCd: " + CnItemCd);
		
		List<HashMap<String, String>> moviesList = service.selectmoviesList(CnItemCd);
		
		JSONArray ja = new JSONArray(moviesList);
		System.out.println(ja);
		
		return ja.toString();
	}
	
	// 상영시간리스트
	@ResponseBody
	@GetMapping("movieTimeList")
	public String timeList(@Param("CnItemCd") String CnItemCd, @Param("MvItemCd") String MvItemCd, @Param("dateCd") String dateCd) {
		System.out.println("movieTimeList----------------------------------------------");
		System.out.println("CnItemCd : " + CnItemCd + ", MvItemCd: " + MvItemCd + ", dateCd: " + dateCd);
		List<HashMap<String, String>> movieTimeList = service.selectMovieTimeList(CnItemCd, MvItemCd, dateCd);
		JSONArray ja = new JSONArray(movieTimeList);
		System.out.println(ja);
		
		return ja.toString();
	}
	
	
	
	@PostMapping("seat")
	public String seat(Model model, String schCd) {
		
		// 예매 테이블 조회 => 데이터가 존재하면 jsp에서 좌석 사용불가처리 (매개변수 : 일정코드)
		List<HashMap<String, String>> reservationList = service.selectReservationList(schCd);
		model.addAttribute("reservationList", reservationList);
		
		return "reservation/seat";
	}
	
	
}
