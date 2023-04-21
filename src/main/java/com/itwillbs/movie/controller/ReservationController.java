package com.itwillbs.movie.controller;

import java.util.*;

import org.apache.ibatis.annotations.*;
import org.json.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

import com.itwillbs.movie.service.*;
import com.itwillbs.movie.vo.*;

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
	
	@GetMapping("reservation")
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
	
	
	// 좌석 선택
	@PostMapping("seat")
	public String seat(Model model) {
		
		return "reservation/seat";
	}
	
	
	// 좌석 정보
//	@PostMapping("CheckReservation")
//	public String CheckReservation(String seatNmList, String seatLineList, String seatNumList) {
//		System.out.println("seatNmList: " + seatNmList);
//		System.out.println("seatLineList: " + seatLineList);
//		System.out.println("seatNumList: " + seatNumList);
//		
//		JSONArray ja1 = new JSONArray(seatNmList);
//		JSONArray ja2 = new JSONArray(seatLineList);
//		JSONArray ja3 = new JSONArray(seatNumList);
//		
//		for(int i = 0; i < ja1.length(); i++) {
//			System.out.println(ja1.get(i) + ", " + ja2.get(i) + ", " + ja3.get(i));
////			
////			map;
////			
////			service.resv(map);
//		} 
//		
//		
//		
//		
//		return "";
//	}
	
	
	
	// 예매 리스트 조회
	@ResponseBody
	@GetMapping("reservationList")
	public String reservationList(Model model, String schCd) {
		// 예매 테이블 조회 => 데이터가 존재하면 jsp에서 좌석 사용불가처리 (매개변수 : 일정코드)
		List<HashMap<String, String>> reservationList = service.selectReservationList(schCd);
		JSONArray ja = new JSONArray(reservationList);
		System.out.println(ja);
		
		return ja.toString();
	}
	
	
	
	
	// 결제
	@PostMapping("reservationPay")
	public String reservationPay(ReservationVO vo, Model model) {
		model.addAttribute("vo", vo);
		
		System.out.println("브이오오오옹" + vo);
		
		
		return "reservation/reservation_pay";
	}
	
	
	
	
	
//	@PostMapping("reservationPay")
//	public String reservationPay(@RequestParam String[] seatNm) {
//		System.out.println(seatNm[0] + ", " + seatNm[1]);
//		return "reservation/reservation_pay";
//	}
	
	
	
}
