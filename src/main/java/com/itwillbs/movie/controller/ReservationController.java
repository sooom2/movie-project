package com.itwillbs.movie.controller;

import java.util.*;

import javax.servlet.http.*;

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
	
	@Autowired
	private CinemaService cinemaService;
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

		//지역
		List<HashMap<String, String>> location = cinemaService.location();
		model.addAttribute("location",location);
		
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
	public String reservationPay(ReservationVO vo, Model model, HttpSession session) {
		model.addAttribute("vo", vo);
		
		
		String id = (String)session.getAttribute("sId");
		HashMap<String, String> member = service.selectMemberId(id);
		model.addAttribute("member", member);
		
		
		return "reservation/reservation_pay";
	}
	
	
	// 예매 결제 완료
	@RequestMapping(value = "reservationSuccess", method = {RequestMethod.GET, RequestMethod.POST})
	public String reservationResult(ReservationVO vo, Model model, HttpSession session) {
		model.addAttribute("vo", vo);
		System.out.println("vo!!!!! :::" + vo);
		String id = (String)session.getAttribute("sId");
		HashMap<String, String> member = service.selectMemberId(id);
		model.addAttribute("member", member);
		
		// 결제 후 예매 정보 추가
		int insertReservation = service.insertReservation(vo, id);
//		System.out.println("insertReservation: " + insertReservation);
		
		// 예매 성공 후 point 적립
		// 예매 성공 후 member 포인트 갱신
		String totalAmt = vo.getTotalAmt();
		if(insertReservation > 0) {
			int insertReservationPoint = service.insertReservationPoint(id, totalAmt);
			int updateMemberPoint = service.updateMemberPoint(id, totalAmt);
		}
		
		
	
		
		
		
		// 좌석 count
		String seatTotal = vo.getSeatNm();
		int seatCnt = seatTotal.length() - seatTotal.replace(",", "").length() + 1;
		
		// 좌석수 업데이트
		int updateSchedule = service.updateSchedule(vo.getSchCd(), seatCnt);
		
		
		
		return "reservation/reservation_success";
	}
	
	
}
