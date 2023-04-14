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

import com.itwillbs.movie.service.MemberService;
import com.itwillbs.movie.service.MovieRegisterService;
import com.itwillbs.movie.service.StoreService;
import com.itwillbs.movie.vo.MemberVO;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService service;
	@Autowired
	private StoreService storeService;
	@Autowired
	private MovieRegisterService movieRegisterService;

	@GetMapping(value = "main")
	public String main(Model model) {
		
		//메인스토어 뿌리기
		List<HashMap<String, String>> gift = storeService.selectItem();
		List<HashMap<String, String>> food = storeService.selectFood();
		List<HashMap<String, String>> ticket = storeService.selectTicket();
		System.out.println(gift);
		
		
		//영화 뿌리기
		List<HashMap<String, String>> movieList = movieRegisterService.selectMovies();
		
		model.addAttribute("movie", movieList);
		model.addAttribute("gift", gift);
		model.addAttribute("food", food);
		model.addAttribute("ticket", ticket);
		
		
		return "index";
	}
	
	//회원로그인
	@GetMapping(value = "memLogin")
	public String memLogin() {
		return "member/mem_login_form";
	}
		
	//회원인증폼
	@GetMapping(value = "memAuth")
	public String memAuth() {
		return "member/join_auth_form";
	}
	
	//회원가입폼
	@GetMapping(value = "memJoin")
	public String memJoin() {
		return "member/mem_join_form";
	}
	//예매확인폼
	@GetMapping(value = "guestRsv")
	public String guestRsv() {
		return "member/guest_rsv_form";
	}
	
	//비회원예매하기폼
	@GetMapping(value = "guestJoin")
	public String guestJoin() {
		return "member/guest_join_form";
	}
	
//	//회원 로그인 확인
//	@PostMapping(value = "loginPro")
//	public String loginPro(@RequestParam HashMap<String, String> login, Model model, HttpSession session) {
//		
//		HashMap<String, String> member = service.checkUser(login);
//		
//		if(member == null) {
//			model.addAttribute("msg", "아이디와 비밀번호가 일치하지 않습니다.");
//			return "member/fail_back";
//		} else {
//			session.setAttribute("sId", member.get("member_id"));
//			return "redirect:/main";
//		}
//		
//	}
	//회원 로그인 확인 - 해싱작업 수정
	@PostMapping(value = "loginPro")
	public String loginPro(@RequestParam HashMap<String, String> login, Model model, HttpSession session) {
	    String memberId = login.get("member_id");
	    String password = login.get("member_pw");

	    HashMap<String, String> member = service.checkUser(login);

	    if (member == null) {
	        model.addAttribute("msg", "아이디와 비밀번호가 일치하지 않습니다.");
	        return "member/fail_back";
	    }

	    String hashedPassword = member.get("member_pw");
	    BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

	    if (passwordEncoder.matches(password, hashedPassword)) {
	        session.setAttribute("sId", memberId);
	        return "redirect:/main";
	    }

	    model.addAttribute("msg", "아이디와 비밀번호가 일치하지 않습니다.");
	    return "member/fail_back";
	}
	
	
	
	// 회원가입폼
	@GetMapping(value = "joinform")
	public String loginform() {
		
		return "member/mem_join_form";
	}
	
	
	// 회원가입 저장
//	@PostMapping(value = "joinPro")
//	public String joinPro(@RequestParam HashMap<String, String> member, Model model) {
//		System.out.println(member);
//		
//		int insertCount = service.insertMember(member);
//		
//		model.addAttribute("member", member);
//		
//		
//		return "member/mem_join_success";
//	}
	
	
	//회원가입저장(해싱작업추가)
	@PostMapping(value = "joinPro")
	public String joinPro(MemberVO member, Model model) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String securePasswd = passwordEncoder.encode(member.getMember_pw());
		member.setMember_pw(securePasswd);
		int insertCount = service.registMember(member);
		
		if(insertCount > 0) { // 가입 성공
			return "member/mem_join_success";
		} else { // 가입 실패
			model.addAttribute("msg", "회원 가입 실패!");
			return "member/fail_back";
		}
		
	}
	
	
	// 로그아웃
	@GetMapping(value = "logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/main";
	}
	
	
}
