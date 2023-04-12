package com.itwillbs.movie.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.movie.service.BoardService;
import com.itwillbs.movie.vo.BoardVO;

@Controller
public class CustomerController {
	
	@Autowired
	private BoardService boardService;
	
	// 고객센터 홈
	@RequestMapping(value = "cc_home", method = {RequestMethod.GET, RequestMethod.POST})
	public String ccHome() {
		return "customer_center/cc_home";
	}
	
	// 공지사항
	@RequestMapping(value = "notice_board", method = {RequestMethod.GET, RequestMethod.POST})
	public String noticeBoard() {
		return "customer_center/notice_board";
	}

	// 자주묻는 질문
	@RequestMapping(value = "faq", method = {RequestMethod.GET, RequestMethod.POST})
	public String faq() {
		return "customer_center/faq";
	}
	
	// 분실물 문의 페이지
	@RequestMapping(value = "lost_board", method = {RequestMethod.GET, RequestMethod.POST})
	public String lostBoard(Model model) {
		
		List<BoardVO> lostBoardList = boardService.getLostBoardList();
		model.addAttribute("lostBoardList", lostBoardList);
//		System.out.println("Controller: " + model);
		return "customer_center/lost_board";
	}
	
	// 분실물 문의 등록페이지
	@RequestMapping(value = "lost_form", method = {RequestMethod.GET, RequestMethod.POST})
	public String lostForm() {
		return "customer_center/lost_form";
	}
	
	// 분실물 문의 작성
	@PostMapping(value = "/lostWritePro")
	public String lostWritePro(BoardVO board, Model model) {
		int insertCount = boardService.registLostBoard(board);
		if(insertCount > 0) {
			
			return "redirect:/lost_board";
		} 
		else {
			model.addAttribute("msg", "등록 실패");
			return "fail_back";
		}
		
	}
	
	// 1대1 문의
	@RequestMapping(value = "oneOnOne", method = {RequestMethod.GET, RequestMethod.POST})
	public String oneOnOne() {
		return "customer_center/oneOnOne";
	}
	
	// 1대1 문의 등록
	@RequestMapping(value = "oneWritePro", method = {RequestMethod.GET, RequestMethod.POST})
	public String oneWritePro(@RequestParam HashMap<String, String> map, Model model) {
//		System.out.println("controller: " + map);
		int insertCount = boardService.registOneBoard(map);
		if(insertCount > 0) {
			
			return "redirect:/one_board";
		} 
		else {
			model.addAttribute("msg", "등록 실패");
			return "fail_back";
		}
	}
	// 1대1 문의 내역 페이지
	@RequestMapping(value = "one_board", method = {RequestMethod.GET, RequestMethod.POST})
	public String oneBoard(Model model) {
		
		List<HashMap<String, String>> oneBoardList = boardService.getOneBoardList();
		System.out.println(oneBoardList);
		model.addAttribute("oneBoardList", oneBoardList);
//		System.out.println("Controller: " + model);
		return "customer_center/one_board";
		
	}
	
	// 비회원문의내역
	@RequestMapping(value = "guest_board", method = {RequestMethod.GET, RequestMethod.POST})
	public String guestBoard() {
		return "customer_center/guest_board";
	}
	
	
}
