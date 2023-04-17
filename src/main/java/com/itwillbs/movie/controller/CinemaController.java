package com.itwillbs.movie.controller;

import java.sql.Time;
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

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.protobuf.TextFormat.ParseException;
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
		
		
		List<HashMap<String, String>> noticeList = cinemaService.noticeList();
		model.addAttribute("noticeList",noticeList);
		
		// 지역선택했을때 그지점 목록
		List<HashMap<String, String>> locationCinema = cinemaService.locationCinema(location_name);
		System.out.println("모델값 :"+model);
		
		
		
		return "cinema/cinema_all";
	}
	//선택한 지역을 넘겨서 받은결과값 (json)
	@ResponseBody
	@RequestMapping(value = "locationCinema",produces = "application/json; charset=utf8",method = {RequestMethod.GET, RequestMethod.POST})
	public List<HashMap<String, String>> locationCinema(String location_name, Model model){
		List<HashMap<String, String>> locationCinema = cinemaService.locationCinema(location_name);
		return locationCinema;
	}
	//예매
	@GetMapping("cinemaDetail")
	public String cinemaDetail(
			  @RequestParam("cinema_code") String cinema_code
			, @RequestParam(value= "play_date",required=false) String play_date
			, Model model
			) throws JsonProcessingException, ParseException {
		System.out.println("=제에발=================================================");
		System.out.println(play_date);
		System.out.println("=제에발=================================================");
		
		List<HashMap<String, String>> cinemaDetail = cinemaService.cinemaDetail(cinema_code);
//		List<HashMap<String, String>> schList = cinemaService.schList(cinema_code,play_date);
		
		ObjectMapper objectMapper = new ObjectMapper();
		String cinemaDetailJson = objectMapper.writeValueAsString(cinemaDetail);
		model.addAttribute("cinemaDetailJson", cinemaDetailJson);
		
		
		List<HashMap<String, Object>> schList = cinemaService.schList(cinema_code);

		for (HashMap<String, Object> sch : schList) {
		    Time sch_start_time = (Time) sch.get("sch_start_time"); // Time 타입으로 값을 받아옴
		    String sch_start_time_str = sch_start_time.toString().substring(0, 5); // Time 객체를 String으로 변환 후, hh:mm 형식으로 변경
		    sch.put("sch_start_time", sch_start_time_str); // 변경된 값을 다시 HashMap에 넣음
		
		    Time sch_last_time = (Time) sch.get("sch_last_time"); // sch_last_time 값을 Time 타입으로 받아옴
		    String sch_last_time_str = sch_last_time.toString().substring(0, 5); // Time 객체를 String으로 변환 후, hh:mm 형식으로 변경
		    sch.put("sch_last_time", sch_last_time_str); 
		
		}
		
		model.addAttribute("cinema_code",cinema_code);
		model.addAttribute("cinemaDetail",cinemaDetail);
		model.addAttribute("schList",schList);
		
		
		
//		System.out.println("=======================================");
//		System.out.println(schList);
//		System.out.println("=======================================");
		
		return "cinema/cinema_detail";
	}
	

	
	// 위치
	@GetMapping("/cinemaLocation")
	public String cinemaLocation(@RequestParam("cinema_code") String cinema_code,Model model) throws JsonProcessingException {
		List<HashMap<String, String>> cinemaDetail = cinemaService.cinemaDetail(cinema_code);
		
		//자바스크립트에서 쓸수있도록 json타입으로 변환
		ObjectMapper objectMapper = new ObjectMapper();
		String cinemaDetailJson = objectMapper.writeValueAsString(cinemaDetail);
		
		model.addAttribute("cinemaDetailJson", cinemaDetailJson);
		model.addAttribute("cinema_code",cinema_code);
		model.addAttribute("cinemaDetail",cinemaDetail);
		
		
		return "cinema/cinema_location";
	}
	

	
	//이벤트
	@GetMapping("/cinemaEvent")
	public String cinemaEvent(@RequestParam("cinema_code") String cinema_code,Model model) {
		List<HashMap<String, String>> cinemaDetail = cinemaService.cinemaDetail(cinema_code);
		
		//파라미터를 받아온것도 model에넣어주고 / 결과값도 넣어줘야함
		model.addAttribute("cinema_code", cinema_code);
		model.addAttribute("cinemaDetail",cinemaDetail);    
		return "cinema/cinema_event";
	}
	
	//관람료
	@GetMapping("/cinemaPrice")
	public String cinemaPrice(@RequestParam("cinema_code") String cinema_code, Model model) {
		
		List<HashMap<String, String>> cinemaDetail = cinemaService.cinemaDetail(cinema_code);
		
		model.addAttribute("cinema_code", cinema_code);
		model.addAttribute("cinemaDetail",cinemaDetail);
		return "cinema/cinema_price";
	}
	
	
	
	
}
