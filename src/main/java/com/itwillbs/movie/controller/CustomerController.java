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
import com.itwillbs.movie.service.MovieRegisterService;
import com.itwillbs.movie.vo.BoardVO;

@Controller
public class CustomerController {
	
	@Autowired
	private BoardService boardService;
	@Autowired
	private MovieRegisterService movieRegisterService;
	
	// 고객센터 홈
	@RequestMapping(value = "cc_home", method = {RequestMethod.GET, RequestMethod.POST})
	public String ccHome() {
		return "customer_center/cc_home";
	}
	
	// 공지사항
	@RequestMapping(value = "notice_board", method = {RequestMethod.GET, RequestMethod.POST})
	public String noticeBoard(Model model) {
		
		List<HashMap<String, String>> noticeBoardList = boardService.getNoticeBoardList();
//		System.out.println(noticeBoardList);
		model.addAttribute("noticeBoardList", noticeBoardList);
		List<HashMap<String, String>> cinemaList = movieRegisterService.selectCinema();
		model.addAttribute("cinemaList",cinemaList);
		System.out.println(model);
		return "customer_center/notice_board";
	}
	
	// 공지사항 상세
	@RequestMapping(value = "notice_detail", method = {RequestMethod.GET, RequestMethod.POST})
	public String noticeDetail(@RequestParam HashMap<String, String> map, Model model) {
		
		map = boardService.getNoticeDetail(map);
		model.addAttribute("map", map);
		
//			List<BoardVO> lostBoardList = boardService.getLostBoardList();
//			model.addAttribute("lostBoardList", lostBoardList);
				
		return "customer_center/notice_detail";
	}

	// 자주묻는 질문
	@RequestMapping(value = "faq", method = {RequestMethod.GET, RequestMethod.POST})
	public String faq(Model model) {
		
		List<HashMap<String, String>> faqBoardList = boardService.getFaqBoardList();
		System.out.println(faqBoardList);
		model.addAttribute("faqBoardList", faqBoardList);
		return "customer_center/faq";
	}
	
	// 분실물 문의 페이지 목록
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
	
	// 분실물 문의 등록
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
	
	// 분실물 상세
	@RequestMapping(value = "lost_detail", method = {RequestMethod.GET, RequestMethod.POST})
	public String lostDetail(@RequestParam HashMap<String, String> map, Model model) {
		
		map = boardService.getLostDetail(map);
		model.addAttribute("map", map);
		
		return "customer_center/lost_detail";
	}
	
	// 분실물 삭제
	@RequestMapping(value = "lost_deletePro", method = {RequestMethod.GET, RequestMethod.POST})
	public String lostDeletePro(@RequestParam HashMap<String, String> map, Model model) {
		int deleteCount = boardService.getLostDelete(map);
		System.out.println(deleteCount);
		if(deleteCount > 0) {
			return "redirect:/lost_board";
		} else {
			model.addAttribute("msg", "삭제 실패!");
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
		System.out.println("controller: " + map);
		int insertCount = boardService.registOneBoard(map);
		if(insertCount > 0) {
			
			return "redirect:/one_list";
		} 
		else {
			model.addAttribute("msg", "등록 실패");
			return "fail_back";
		}
	}
	
//	// 분실물 문의 페이지 목록
//	@RequestMapping(value = "one_detail_list", method = {RequestMethod.GET, RequestMethod.POST})
//	public String one_list(Model model) {
//		// 하다만거===================================================================================================================
//		List<BoardVO> oneBoardList = boardService.getOneBoardList();
//		model.addAttribute("oneBoardList", oneBoardList);
////			System.out.println("Controller: " + model);
//		return "customer_center/one_list";
//	}
	
	
	// 1대1 문의 내역 페이지
	@RequestMapping(value = "one_board", method = {RequestMethod.GET, RequestMethod.POST})
	public String oneBoard(Model model) {
		
		List<HashMap<String, String>> oneBoardList = boardService.getOneBoardList();
		System.out.println(oneBoardList);
		model.addAttribute("oneBoardList", oneBoardList);
//		System.out.println("Controller: " + model);
		return "customer_center/one_board";
	}
	
//	// 비회원문의내역
//	@RequestMapping(value = "guest_board", method = {RequestMethod.GET, RequestMethod.POST})
//	public String guestBoard() {
//		return "customer_center/guest_board";
//	}
	// 비회원문의확인
	@RequestMapping(value = "guest_confirm", method = {RequestMethod.GET, RequestMethod.POST})
	public String guestConfirm() {
		return "customer_center/guest_confirm";
	}
	
	
	//관리자게시판============================================================================================
	
	// 관리자 공지사항 목록
	@RequestMapping(value = "admin_notice_board", method = {RequestMethod.GET, RequestMethod.POST})
	public String adminNoticeBoard(Model model) {
		
		List<HashMap<String, String>> noticeBoardList = boardService.getNoticeBoardList();
//		System.out.println(noticeBoardList);
		model.addAttribute("noticeBoardList", noticeBoardList);
		List<HashMap<String, String>> cinemaList = movieRegisterService.selectCinema();
		model.addAttribute("cinemaList",cinemaList);
		System.out.println(model);
		
		return "admin/admin_notice_board";
	}

	// 관리자 공지 등록
	@RequestMapping(value = "notice_register_pro", method = {RequestMethod.GET, RequestMethod.POST})
	public String noticeRegisterPro(@RequestParam HashMap<String, String> map, Model model) {
		
		int insertCount = boardService.registNoticeBoard(map);
		System.out.println("여기" + map);
		if(insertCount > 0) {
			return "redirect:/admin_notice_board";
		} else {
			model.addAttribute("msg", "등록 실패!");
			return "fail_back";
		}
	}
	
	// 관리자 공지 수정창
	@RequestMapping(value = "admin_notice_update", method = {RequestMethod.GET, RequestMethod.POST})
	public String adminNoticeUpdate(@RequestParam String notice_code, Model model) {
		
		HashMap<String, String> noticeBoard = boardService.getNoticeBoard(notice_code);
		System.out.println(noticeBoard);
		model.addAttribute("noticeBoard", noticeBoard);
		List<HashMap<String, String>> cinemaList = movieRegisterService.selectCinema();
		model.addAttribute("cinemaList",cinemaList);
		System.out.println(model);
		return "admin/admin_notice_update";
	}
	
	// 관리자 공지 수정
	@RequestMapping(value = "notice_update_pro", method = {RequestMethod.GET, RequestMethod.POST})
	public String noticeUpdatePro(@RequestParam HashMap<String, String> map, Model model) {
		int updateCount = boardService.registNoticeUpdate(map);
		System.out.println(updateCount);
		if(updateCount > 0) {
			return "redirect:/admin_notice_board";
		} else {
			model.addAttribute("msg", "수정 실패!");
			return "fail_back";
		}
	}
	
	// 공지사항 삭제
	@RequestMapping(value = "notice_delete_pro", method = {RequestMethod.GET, RequestMethod.POST})
	public String noticeDeletePro(@RequestParam HashMap<String, String> map, Model model) {
		int deleteCount = boardService.getNoticeDelete(map);
		System.out.println(deleteCount);
		if(deleteCount > 0) {
			return "redirect:/admin_notice_board";
		} else {
			model.addAttribute("msg", "삭제 실패!");
			return "fail_back";
		}
		
	}
	
	// 관리자 자주묻는 질문 목록
	@RequestMapping(value = "admin_faq", method = {RequestMethod.GET, RequestMethod.POST})
	public String adminFaq(Model model) {
		
		List<HashMap<String, String>> faqBoardList = boardService.getFaqBoardList();
//		System.out.println(noticeBoardList);
		model.addAttribute("faqBoardList", faqBoardList);
//		System.out.println(model);
		return "admin/admin_faq";
	}
	
	// 관리자 자주 묻는 질문 등록
	@RequestMapping(value = "faq_register_pro", method = {RequestMethod.GET, RequestMethod.POST})
	public String faqRegisterPro(@RequestParam HashMap<String, String> map, Model model) {
		
		int insertCount = boardService.registFaqBoard(map);
		if(insertCount > 0) {
			return "redirect:/admin_faq";
		} else {
			model.addAttribute("msg", "등록 실패!");
			return "fail_back";
		}
	}
	
	// 관리자 자주묻는 질문 수정창
	@RequestMapping(value = "admin_faq_update", method = {RequestMethod.GET, RequestMethod.POST})
	public String adminFaqUpdate(@RequestParam String faq_code, Model model) {
		
		HashMap<String, String> faqBoard = boardService.getFaqBoard(faq_code);
		System.out.println(faqBoard);
		model.addAttribute("faqBoard", faqBoard);
		System.out.println(model);
		return "admin/admin_faq_update";
	}
	
	// 관리자 자주묻는 질문 수정
	@RequestMapping(value = "faq_update_pro", method = {RequestMethod.GET, RequestMethod.POST})
	public String faqUpdatePro(@RequestParam HashMap<String, String> map, Model model) {
		int updateCount = boardService.registFaqUpdate(map);
		System.out.println(updateCount);
		if(updateCount > 0) {
			return "redirect:/admin_faq";
		} else {
			model.addAttribute("msg", "수정 실패!");
			return "fail_back";
		}
	}
	
	// 관리자 자주묻는 질문 삭제
	@RequestMapping(value = "faq_delete_pro", method = {RequestMethod.GET, RequestMethod.POST})
	public String faqDeletePro(@RequestParam HashMap<String, String> map, Model model) {
		int deleteCount = boardService.getFaqDelete(map);
		System.out.println(deleteCount);
		if(deleteCount > 0) {
			return "redirect:/admin_faq";
		} else {
			model.addAttribute("msg", "삭제 실패!");
			return "fail_back";
		}
	}
	
	// 관리자 분실물 문의 페이지
	@RequestMapping(value = "admin_lost_board", method = {RequestMethod.GET, RequestMethod.POST})
	public String adminLostBoard(Model model) {
		
		List<BoardVO> lostBoardList = boardService.getLostBoardList();
		model.addAttribute("lostBoardList", lostBoardList);
//		System.out.println("Controller: " + model);
		return "admin/admin_lost_board";
	}
	
	// 분실물 답변 등록창
	@RequestMapping(value = "admin_lost_rep", method = {RequestMethod.GET, RequestMethod.POST})
	public String admin_lost_rep(@RequestParam String lost_code, Model model) {
		
		HashMap<String, String> lostBoard = boardService.getLostBoard(lost_code);
		System.out.println(lostBoard);
		model.addAttribute("lostBoard", lostBoard);
		System.out.println(model);
		return "admin/admin_lost_rep";
	}
	
	// 관리자 분실물 답변 등록
	@RequestMapping(value = "lost_update_pro", method = {RequestMethod.GET, RequestMethod.POST})
	public String lost_update_pro(@RequestParam HashMap<String, String> map, Model model) {
		int updateCount = boardService.registLostUpdate(map);
		System.out.println(updateCount);
		if(updateCount > 0) {
			return "redirect:/admin_lost_board";
		} else {
			model.addAttribute("msg", "수정 실패!");
			return "fail_back";
		}
	}
	
	// 관리자 분실물 삭제
	@RequestMapping(value = "lost_delete_pro", method = {RequestMethod.GET, RequestMethod.POST})
	public String lostAdminDeletePro(@RequestParam HashMap<String, String> map, Model model) {
		int deleteCount = boardService.getLostDelete(map);
		System.out.println(deleteCount);
		if(deleteCount > 0) {
			return "redirect:/admin_lost_board";
		} else {
			model.addAttribute("msg", "삭제 실패!");
			return "fail_back";
		}
	}	
	
//	//분실물 문의
//	@RequestMapping(value = "admin_lost_board", method = {RequestMethod.GET, RequestMethod.POST})
//	public String adminLostBoard() {
//		return "admin/admin_lost_board";
//	}
	
//	//1대1 문의
//	@RequestMapping(value = "admin_oneOnOne", method = {RequestMethod.GET, RequestMethod.POST})
//	public String adminOneOnOne() {
//		return "admin/admin_oneOnOne";
//	}
	// 관리자 1:1 문의 내역 페이지
	@RequestMapping(value = "admin_oneOnOne", method = {RequestMethod.GET, RequestMethod.POST})
	public String adminOneOnOne(Model model) {
		
		List<HashMap<String, String>> oneBoardList = boardService.getOneBoardList();
		System.out.println(oneBoardList);
		model.addAttribute("oneBoardList", oneBoardList);
//			System.out.println("Controller: " + model);
		return "admin/admin_oneOnOne";
	}
	
	// 관리자 1:1 답변 등록창
	@RequestMapping(value = "admin_one_rep", method = {RequestMethod.GET, RequestMethod.POST})
	public String adminOneRep(@RequestParam String one_code, Model model) {
		
		HashMap<String, String> oneBoard = boardService.getOneBoard(one_code);
		System.out.println(oneBoard);
		model.addAttribute("oneBoard", oneBoard);
		System.out.println(model);
		return "admin/admin_one_rep";
	}
	
	// 관리자 1:1 답변 등록
	@RequestMapping(value = "one_update_pro", method = {RequestMethod.GET, RequestMethod.POST})
	public String oneUpdatePro(@RequestParam HashMap<String, String> map, Model model) {
		int updateCount = boardService.registOneUpdate(map);
		System.out.println(updateCount);
		if(updateCount > 0) {
			return "redirect:/admin_oneOnOne";
		} else {
			model.addAttribute("msg", "수정 실패!");
			return "fail_back";
		}
	}
	
	// 관리자 1:1 삭제
	@RequestMapping(value = "one_delete_pro", method = {RequestMethod.GET, RequestMethod.POST})
	public String oneDeletePro(@RequestParam HashMap<String, String> map, Model model) {
		int deleteCount = boardService.getOneDelete(map);
		System.out.println(deleteCount);
		if(deleteCount > 0) {
			return "redirect:/admin_oneOnOne";
		} else {
			model.addAttribute("msg", "삭제 실패!");
			return "fail_back";
		}
	}	
	
	// 관리자 비회원 문의내역
	@RequestMapping(value = "admin_guest_board", method = {RequestMethod.GET, RequestMethod.POST})
	public String adminGuestBoard() {
		return "admin/admin_guest_board";
	}
	
		
	
	
	
}
