package com.itwillbs.movie.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwillbs.movie.service.MovieRegisterService;
import com.itwillbs.movie.service.MypageService;

@Controller
public class MovieController {
	
	@Autowired
	private MovieRegisterService service;
	@Autowired
	private MypageService mypageService;
	
	// 영화목록페이지
	@RequestMapping(value = "screening", method = {RequestMethod.GET, RequestMethod.POST})
	public String screening(Model model) {
		
		List<HashMap<String, String>> movieList = service.selectMovies();
		
		model.addAttribute("movieList",movieList);
		
		
		return "movieBoard/screening";
	}
	
	// 상영예정작
	@RequestMapping(value = "comming", method = {RequestMethod.GET, RequestMethod.POST})
	public String comming(Model model) {
		
		List<HashMap<String, String>> movieList = service.selectCommingMovies();
		
		model.addAttribute("movieList",movieList);
		
		return "movieBoard/comming";
	}
	// 상영예정작
	@RequestMapping(value = "ascending", method = {RequestMethod.GET, RequestMethod.POST})
	public String ascending(Model model) {
		
		List<HashMap<String, String>> movieList = service.selectAscendingMovies();
		
		model.addAttribute("movieList",movieList);
		
		return "movieBoard/comming";
	}
	
	
	// 영화상세페이지
	// Post매핑으로 하고 저장되지 않은 movie_code 를 보냈을 때는 메인 페이지로 보내야함
	@RequestMapping(value = "MovieInfo", method = {RequestMethod.GET, RequestMethod.POST})
	public String movieInfo(@RequestParam String info_movie_code, Model model) {
		HashMap<String, String> movieInfo = service.selectMovie(info_movie_code);
		HashMap<String, String> movieInfoReview = service.selectMovieReview(info_movie_code);
		// DB에 없는 movie_code를 요청 보내지 않으면 메인페이지로 보내기 
		if(movieInfo == null) {
			return "redirect:/main";
		}
		
		
		model.addAttribute("movieInfo", movieInfo);
		model.addAttribute("movieInfoReview", movieInfoReview);
		return "movieBoard/movieInfo2";
	}
	
	//좋아요 버튼 기능
	
	@GetMapping(value = "likeInsert")
	@ResponseBody
	public String likeCount(@RequestParam HashMap<String, String> like, HttpSession session) { 
		String id = (String)session.getAttribute("sId");
		like.put("member_id", id);
		
		String result = "컨트롤러";
		if(id == null) {
			result = "로그인 후 좋아요 할 수 있습니다.";
		}
		
		int insertCount = mypageService.likeInsert(like);
		
		if(insertCount > 0) {
			service.likeUpdate(like);
			result = "좋아요 성공!";
		}else {
			result = "다시 시도해주세요";
		}
		return result; 
	}
	
}
