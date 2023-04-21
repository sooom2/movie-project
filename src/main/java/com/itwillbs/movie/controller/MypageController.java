package com.itwillbs.movie.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.movie.service.MypageService;
import com.itwillbs.movie.vo.MemberVO;

@Controller
public class MypageController {
	
	@Autowired
	private MypageService service;

	//예매내역
	@GetMapping(value = "mypageR")
	public String mypageR(HttpSession session, MemberVO member, Model model) {
		String id = (String)session.getAttribute("sId");
		
		
		if(id ==null) {
			return "redirect:/memLogin";
		}
		
		List<HashMap<String, String>> movieList = service.movieList(id);
		model.addAttribute("movieList",movieList);
		
		member= service.getMemberInfo(id);
		model.addAttribute("member", member);
		return "mypage/mypage_rsv_form";
	} 
	
	//포인트조회
	@GetMapping(value = "mypageP")
	public String mypageP(HttpSession session, MemberVO member, Model model) {
		String id = (String)session.getAttribute("sId");
		
		List<HashMap<String, String>> movieList = service.movieList(id);
		model.addAttribute("movieList",movieList);
		
		List<HashMap<String, String>> pointList = service.pointList(id);
		model.addAttribute("pointList", pointList);
		
		member= service.getMemberInfo(id);
		model.addAttribute("member", member);
		
		return "mypage/mypage_point_form";
		
	} 
	 
	//스토어구매내역
	@GetMapping(value = "mypageS")
	public String mypageS(HttpSession session, MemberVO member, Model model) {
		String id = (String)session.getAttribute("sId");
		
		List<HashMap<String, String>> movieList = service.movieList(id);
		model.addAttribute("movieList",movieList);
		
		List<HashMap<String,String>> payList = service.payList(id);
		model.addAttribute("payList", payList);
		
		
		
		member= service.getMemberInfo(id);
		model.addAttribute("member", member);
		
		return "mypage/mypage_store_form";
	}
	
	//내가올린질문
	@GetMapping(value = "mypageQ")
	public String mypageQ(HttpSession session, MemberVO member, Model model) {
		String id = (String)session.getAttribute("sId");
		
		List<HashMap<String, String>> movieList = service.movieList(id);
		model.addAttribute("movieList",movieList);
		
		
		member= service.getMemberInfo(id);
		model.addAttribute("member", member);
		
		List<HashMap<String, String>> qnaList = service.qnaList(id);
		model.addAttribute("qnaList",qnaList);
		
		return "mypage/mypage_qna_form";
	}
	
	//회원정보수정
	@GetMapping(value = "mypageI")
	public String mypageI(HttpSession session, Model model) {
		
		String id = (String)session.getAttribute("sId");
		List<HashMap<String, String>> cinemaList = service.cinemaList(id);
		model.addAttribute("cinemaList", cinemaList);
		
		
		
		if(id ==null) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			return "fail_back";
		}
		
		MemberVO member = service.getMemberInfo(id);
		model.addAttribute("member", member);
		return "mypage/mypage_info_form";
	}
	//회원정보수정
	@PostMapping(value = "updatePro")
	public String updatePro(@RequestParam HashMap<String, String> update, Model model, HttpSession session ) {
		String id = (String)session.getAttribute("sId");
		String member_address = update.get("member_address1") + "/" + update.get("member_address2");
		update.put("member_address", member_address);
		if(id == null) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			return "fail_back";
		}
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String Epasswd = service.getPasswd(id);
		
		if(Epasswd == null || !passwordEncoder.matches(update.get("member_pw"), Epasswd)) {
			model.addAttribute("msg", "비밀번호 확인필수!");
			return "fail_back";
		}
		
		if(!update.get("member_pw2").equals("")) {
			update.put("member_pw2",passwordEncoder.encode(update.get("member_pw2")));
		}
		
		int updateCount = service.updateMemberInfo(update);
		
		if(updateCount > 0) {
			model.addAttribute("msg", "회원정보수정성공!");
			model.addAttribute("target", "mypageI");
			return "success";
			
		} else {
			model.addAttribute("msg", "회원정보수정 실패!");
			return "fail_back";
		}
		
		
	}
	
	//회원탈퇴
	@PostMapping(value = "quitPro")
	public String quitPro(@RequestParam HashMap<String, String> quit, HttpSession session, Model model ) {
		//세션아이디 저장
		String id = (String)session.getAttribute("sId");
		String password = quit.get("member_pw");
		//아이디와 일치하는 레코드의 패스워드 조회
		String dbPasswd = service.getPasswd(id);
		
		System.out.println("평문 암호 : " + password + ", 해싱 암호 : " + dbPasswd);
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		if(passwordEncoder.matches(password, dbPasswd)) {	
			int deleteCount = service.quitMember(quit);
			
			if(deleteCount > 0) {
				session.invalidate();
				model.addAttribute("msg", "탈퇴가 완료되었습니다!");
				model.addAttribute("target", "main");
				return "success";
			} else {
				model.addAttribute("msg", "탈퇴 실패!");
				return "fail_back";
			}
		
		} else {
			model.addAttribute("msg", "권한이 없습니다!");
			return "fail_back";
		
		}
		
	}
	
	
	
	//리뷰페이지
	@GetMapping(value = "mypageRv")
	public String mypageRv(HttpSession session, MemberVO member, Model model) {
		String id = (String)session.getAttribute("sId");
		member= service.getMemberInfo(id);
		
		List<HashMap<String, String>> movieList = service.movieList(id);
		model.addAttribute("movieList",movieList);
		
		List<HashMap<String, String>> revList = service.revList(id);
		model.addAttribute("revList",revList);
		
		model.addAttribute("member", member);
		
		return "mypage/mypage_review_form";
		
	}
	
	@PostMapping(value="mypageRvPro")
	public String mypageRvPro(@RequestParam HashMap<String, String> review, HttpSession session,  Model model) {
		String id = (String)session.getAttribute("sId");
		review.put("id", id);

		int insertCount = service.insertReview(review);
		
		
		if(insertCount > 0 ) {
			
			model.addAttribute("msg", "리뷰가 등록 되었습니다.");
			model.addAttribute("target", "mypageRv");
			service.insertPoint(id);
			service.updatePoint(id);
			

			return "success";
		
		} else {
			
			model.addAttribute("msg", "리뷰 등록 실패!");
			return "fail_back";
		}
		
		
	}
	
	
	
	
	
	
}
