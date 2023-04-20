package com.itwillbs.movie.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.itwillbs.movie.service.MovieRegisterService;
import com.itwillbs.movie.vo.BoardVO;
import com.itwillbs.movie.vo.PageInfo;

@Controller
public class MovieRegisterController {
	@Autowired
	private MovieRegisterService movieRegisterService;
	
	
	
	
	//영화관리페이지
	//영화목록조회
	@RequestMapping(value = "admin_movie_register", method = {RequestMethod.GET, RequestMethod.POST})
	public String movieRegister(Model model) {
		List<HashMap<String, String>> movieList = movieRegisterService.selectMovies();
		model.addAttribute("movieList", movieList);
		return "admin/admin_movie_register";
	}
	
	//영화상영예정작관리
	@RequestMapping(value = "admin_movie_comming_register", method = {RequestMethod.GET, RequestMethod.POST})
	public String admin_movie_comming_register(Model model) {
		List<HashMap<String, String>> movieList = movieRegisterService.selectCommingMovies();
		model.addAttribute("movieList", movieList);
		
		return "admin/admin_movie_comming_register";
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
	public String scheduleRegister(Model model,@RequestParam(defaultValue = "1") int pageNum) {
 		
//		List<HashMap<String, String>> scheduleList = movieRegisterService.selectSchedule();
//		model.addAttribute("scheduleList", scheduleList);
		
		// -----------------------------------------------------------------------
		// 페이징 처리를 위해 조회 목록 갯수 조절 시 사용될 변수 선언
		int listLimit = 15; // 한 페이지에서 표시할 게시물 목록 갯수(10개로 제한)
		int startRow = (pageNum - 1) * listLimit; // 조회 시작 행번호(startRow) 계산 => 0, 10, 20...
		// -----------------------------------------------------------------------
		// BoardService - getBoardList() 메서드를 호출하여 게시물 목록 조회
		// => 파라미터 : 검색타입, 검색어, 시작행번호, 목록갯수
		// => 리턴타입 : List<BoardVO>(boardList)
		List<HashMap<String, String>> scheduleList = 
				movieRegisterService.selectSchedule(startRow, listLimit);
		// -----------------------------------------------------------------------
		// 페이징 처리를 위한 계산 작업
		// 한 페이지에서 표시할 페이지 목록(번호) 갯수 계산
		// 1. BoardListService - getBoardListCount() 메서드를 호출하여
		//    전체 게시물 수 조회(페이지 목록 갯수 계산에 사용)
		//    => 파라미터 : 검색타입, 검색어   리턴타입 : int(listCount)
		int listCount = movieRegisterService.getBoardListCount();
//				System.out.println("총 게시물 수 : " + listCount);
		
		// 2. 한 페이지에서 표시할 페이지 목록 갯수 설정
		int pageListLimit = 10; // 페이지 목록 갯수를 3개로 제한
		
		// 3. 전체 페이지 목록 수 계산
		// => 전체 게시물 수를 목록 갯수로 나누고, 남은 나머지가 0보다 클 경우 페이지 수 + 1
		//    (페이지수 + 1 계산하기 위해 삼항연산자 활용)
		int maxPage = listCount / listLimit + (listCount % listLimit > 0 ? 1 : 0);
		
		// 4. 시작 페이지 번호 계산
		// => 페이지 목록 갯수가 3일 때
		//    1 ~ 3 페이지 사이일 경우 시작 페이지 번호 : 1
		//    4 ~ 6 페이지 사이일 경우 시작 페이지 번호 : 4
		int startPage = (pageNum - 1) / pageListLimit * pageListLimit + 1;
		
		// 5. 끝 페이지 번호 계산
		// => 시작 페이지 번호에 페이지 목록 갯수를 더한 후 - 1
		int endPage = startPage + pageListLimit - 1;
		
		// 만약, 끝 페이지 번호(endPage) 가 최대 페이지 번호(maxPage) 보다 클 경우
		// 끝 페이지 번호를 최대 페이지 번호로 교체
		if(endPage > maxPage) {
			endPage = maxPage;
		}
	
		// 페이징 처리 정보를 저장하는 PageInfo 클래스 인스턴스 생성 및 데이터 저장
		PageInfo pageInfo = new PageInfo(listCount, pageListLimit, maxPage, startPage, endPage);
		System.out.println(pageInfo);
		// ------------------------------------------------------------------------------------
		// 조회된 게시물 목록 객체(boardList) 와 페이징 정보 객체(pageInfo)를 Model 객체에 저장
		model.addAttribute("scheduleList", scheduleList);
		model.addAttribute("pageInfo", pageInfo);
		// -----------------------------------------------------------------------
		
		System.out.println(scheduleList);
		
		return "admin/admin_movie_schedule";
	}
 	
 	
	//상영스케쥴 삭제
	@RequestMapping(value = "deleteSchedule", method = {RequestMethod.GET, RequestMethod.POST})
	public String deleteSchedule(@RequestParam String sch_code,Model model) {
		
		
		int deleteCount = movieRegisterService.deleteSchedule(sch_code);	
		
		
		
		
		return "redirect:/admin_schedule_register";
	}
 	 	
	
	//상영스케쥴 삭제
	@ResponseBody
	@GetMapping("deleteDateSch")
	public Map<String, Object> deleteDateSch(@RequestParam String date,Model model) throws JsonProcessingException {
		
		
		int deleteCount = movieRegisterService.deleteDateSch(date);	
		Map<String, Object> response = new HashMap<>();
	    
		   
		response.put("deleteCount", deleteCount);
		   
		return response;
			
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
 	
 	//영화이름정렬
 	@RequestMapping(value = "movieNameSort", method = {RequestMethod.GET, RequestMethod.POST})
 	public String movieNameSort(Model model) {
 		List<HashMap<String, String>> scheduleList = movieRegisterService.movieNameSort();
 		model.addAttribute("scheduleList", scheduleList);
 		return "admin/admin_movie_schedule";
 	}
 	
 	
 	//상영일자정렬
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
	// 토글은 안됨..
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
 	
 	
 	//상영종료된 목록movieEndSchedule
 	@GetMapping("movieEndSchedule")
 	public String movieEndSchedule(Model model,@RequestParam(defaultValue = "1") int pageNum) {
 		
// 		List<HashMap<String, String>> endSchList = movieRegisterService.endSchList();
 		int insertCount = movieRegisterService.insertSchedule_end();
 		if(insertCount > 0) {
 			int delCount = movieRegisterService.endSchedule_del();
 		}
 		//상영종료테이블에서LIST
 		
 		// -----------------------------------------------------------------------
		// 페이징 처리를 위해 조회 목록 갯수 조절 시 사용될 변수 선언
		int listLimit = 15; // 한 페이지에서 표시할 게시물 목록 갯수(10개로 제한)
		int startRow = (pageNum - 1) * listLimit; // 조회 시작 행번호(startRow) 계산 => 0, 10, 20...
		// -----------------------------------------------------------------------
		// BoardService - getBoardList() 메서드를 호출하여 게시물 목록 조회
		// => 파라미터 : 검색타입, 검색어, 시작행번호, 목록갯수
		// => 리턴타입 : List<BoardVO>(boardList)
		
		List<HashMap<String, String>> endSchList = movieRegisterService.endSchList(startRow, listLimit);
 		
		// -----------------------------------------------------------------------
		// 페이징 처리를 위한 계산 작업
		// 한 페이지에서 표시할 페이지 목록(번호) 갯수 계산
		// 1. BoardListService - getBoardListCount() 메서드를 호출하여
		//    전체 게시물 수 조회(페이지 목록 갯수 계산에 사용)
		//    => 파라미터 : 검색타입, 검색어   리턴타입 : int(listCount)
		int listCount = movieRegisterService.getBoardListCount();
// 					System.out.println("총 게시물 수 : " + listCount);
		
		// 2. 한 페이지에서 표시할 페이지 목록 갯수 설정
		int pageListLimit = 10; // 페이지 목록 갯수를 3개로 제한
		
		// 3. 전체 페이지 목록 수 계산
		// => 전체 게시물 수를 목록 갯수로 나누고, 남은 나머지가 0보다 클 경우 페이지 수 + 1
		//    (페이지수 + 1 계산하기 위해 삼항연산자 활용)
		int maxPage = listCount / listLimit + (listCount % listLimit > 0 ? 1 : 0);
		
		// 4. 시작 페이지 번호 계산
		// => 페이지 목록 갯수가 3일 때
		//    1 ~ 3 페이지 사이일 경우 시작 페이지 번호 : 1
		//    4 ~ 6 페이지 사이일 경우 시작 페이지 번호 : 4
		int startPage = (pageNum - 1) / pageListLimit * pageListLimit + 1;
		
		// 5. 끝 페이지 번호 계산
		// => 시작 페이지 번호에 페이지 목록 갯수를 더한 후 - 1
		int endPage = startPage + pageListLimit - 1;
		
		// 만약, 끝 페이지 번호(endPage) 가 최대 페이지 번호(maxPage) 보다 클 경우
		// 끝 페이지 번호를 최대 페이지 번호로 교체
		if(endPage > maxPage) {
			endPage = maxPage;
		}
	
		// 페이징 처리 정보를 저장하는 PageInfo 클래스 인스턴스 생성 및 데이터 저장
		PageInfo pageInfo = new PageInfo(listCount, pageListLimit, maxPage, startPage, endPage);
		System.out.println(pageInfo);
		// ------------------------------------------------------------------------------------
		// 조회된 게시물 목록 객체(boardList) 와 페이징 정보 객체(pageInfo)를 Model 객체에 저장
		model.addAttribute("endSchList", endSchList);
		model.addAttribute("pageInfo", pageInfo);
 			// -----------------------------------------------------------------------
 		System.out.println(endSchList);
 		
 		return "admin/admin_movie_schedule_endList";
 	}
 	
 	
 	
 	
 	
// 	//상영종료된 값 스케쥴링	
// 	@Component
// 	public class ScheduledTask {
// 	    @Scheduled(fixedRate = 10000 * 6 *60 *24) // 하루마다 실행
// 	    public void executeTask() {
// 	    	//1. 상영종료된 정보들을 조회 (schedule 테이블)
// 	    	//2. 상영종료된 정보들을 schedule_end 테이블로이동
// 	    	//3. schedule 테이블에서 삭제
// 	    	
// 	    	List<HashMap<String, String>> endSch = movieRegisterService.selectEndSch();
// 	    	System.out.println(endSch);
// 	    	for (HashMap<String, String> sch : endSch) {
// 	    		
//	 	    	sch.put("sch_screen_code", endSch.get("sch_screen_code"));
//	 	    	sch.put("sch_cinema_code", "상영관");
//	 	    	sch.put("sch_movie_code", "상영관 번호");
//	 	    	sch.put("sch_movie_date", "상영 시작 시간");
//	 	    	sch.put("sch_last_time", "상영 시작 시간");
//	
//	 	    	endSch.add(sch);
//	 	    	
// 	    	}
// 	    }
// 	}
 	
}





















