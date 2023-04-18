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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwillbs.movie.service.MailSendService;
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
	@Autowired
	private MailSendService mailService;

	
	@GetMapping(value = "main")
	public String main(Model model) {
		
		
		//메인스토어 뿌리기
		List<HashMap<String, String>> hotItem = service.selectHotItem();
		
		//영화 뿌리기
		List<HashMap<String, String>> movieList = movieRegisterService.selectMovies();
		List<HashMap<String, String>> commingMovieList = movieRegisterService.selectCommingMovies();
		List<HashMap<String, String>> ascendigMovieList = movieRegisterService.selectAscendingMovies();
		
		model.addAttribute("movie", movieList);
		model.addAttribute("commingMovieList", commingMovieList);
		model.addAttribute("ascendigMovieList",ascendigMovieList);
		model.addAttribute("hotItem", hotItem);
		
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
	        session.setAttribute("token", "true");
	        return "redirect:/main";
	    }

	    model.addAttribute("msg", "아이디와 비밀번호가 일치하지 않습니다.");
	    return "member/fail_back";
	}
	
	// 카카오 로그인 확인
	@PostMapping(value = "kakaoLogin")
	public String kakao(@RequestParam HashMap<String, String> kakao, Model model, HttpSession session) {
		
		HashMap<String, String> member = service.kakaoMember(kakao.get("email"));
		session.setAttribute("token", kakao.get("accessToken"));
		
		// 회원 판별
		if(member == null) {
			model.addAttribute("msg", "회원이 아닙니다. 회원가입 페이지로 이동합니다.");
			model.addAttribute("target", "joinform");
			
			return "member/success";
			
		} else {
			session.setAttribute("sId", member.get("member_id"));
			
			return "redirect:/main";
		}
		
	}
	
	// 카카오 회원가입
	@PostMapping(value = "kakaoJoin")
	public String kakaoJoin(@RequestParam HashMap<String, String> kakao, Model model) {
		model.addAttribute("email", kakao.get("email"));
		
		return "member/mem_join_form";
	}
	
	
//	// 네이버 로그인
//	@PostMapping(value = "naver")
//	public String naver(@RequestParam HashMap<String, String> naver, Model model, HttpSession session) {
//		
//		System.out.println(naver);
//		
//		return "";
//	}
	
	
	// 이메일 인증
	@GetMapping(value = "mailCheck")
	@ResponseBody
	public String mailCheck(String email) {
		System.out.println(email);
		return mailService.joinEmail(email);
	}
	
	// 아이디 찾기
	@GetMapping(value = "findId")
	public String findId() {
		return "member/mem_find_id";
	}
	
	// 아이디 찾기pro
	@PostMapping(value = "findIdPro")
	public String findIdPro(@RequestParam HashMap<String, String> member, Model model) {
		HashMap<String, String> success = service.findId(member);
		
		if(success == null) {
			model.addAttribute("msg", "회원정보가 일치하지 않습니다");
			return "member/fail_back";
		} else {
			model.addAttribute("member_id", success.get("member_id"));
			return "member/mem_find_idSuccess";
		}
	}
	
	
	// 비밀번호 찾기
	@GetMapping(value = "findPw")
	public String findPw() {
		return "member/mem_find_pw";
	}
	
	// SMS 인증
	@GetMapping(value = "phoneCheck")
	@ResponseBody
	public String sendSMS(@RequestParam String phone) { // 휴대폰 문자보내기
		int randomNumber = (int)((Math.random()* (9999 - 1000 + 1)) + 1000);//난수 생성
		service.certifiedPhoneNumber(phone, randomNumber);
		
		return Integer.toString(randomNumber);
	}
	
	// 비밀번호 재설정
	@RequestMapping(value = "renewPw", method = {RequestMethod.GET, RequestMethod.POST})
	public String renewPw(@RequestParam HashMap<String, String> member, Model model) {
		model.addAttribute("member_id", member.get("member_id"));
		return "member/mem_find_renewPw";
	}
	
	// 비밀번호 재설정pro
	@RequestMapping(value = "renewPwPro", method = {RequestMethod.GET, RequestMethod.POST})
	public String renewPwPro(@RequestParam HashMap<String, String> member, Model model) {
		// 해싱 -> success 페이지 -> memLogin
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String securePasswd = passwordEncoder.encode(member.get("member_pw"));
		member.put("member_pw", securePasswd);
		int updateCount = service.renewPw(member);
		
		model.addAttribute("msg", "비밀번호 재설정이 완료되었습니다.");
		model.addAttribute("target", "memLogin");
		return "member/success";
	}
	
	
	// 회원가입폼
	@GetMapping(value = "joinform")
	public String loginform(String email, Model model) {
		model.addAttribute("email", email);
		return "member/mem_join_form";
	}
	
	// 아이디 사용 조회
	@GetMapping(value = "MemberCheckId")
	@ResponseBody
	public boolean memberCheckId(@RequestParam String id) {
		boolean result = false;
		
		HashMap<String, String> member = service.checkId(id);
		if(member == null) {
			result = false;
		} else {
			result = true;
		}
		
		return result;
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
//	@PostMapping(value = "joinPro")
//	public String joinPro(MemberVO member, Model model, HttpSession session) {
//		String id = (String)session.getAttribute("sId");
//		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
//		String securePasswd = passwordEncoder.encode(member.getMember_pw());
//		member.setMember_pw(securePasswd);
//		int insertCount = service.registMember(member);
//		if(insertCount > 0) { // 가입 성공
//			service.insertPoint(id);
//			return "member/mem_join_success";
//		} else { // 가입 실패
//			model.addAttribute("msg", "회원 가입 실패!");
//			return "member/fail_back";
//		}
//		
//	}
	
	// 회원가입
	@PostMapping(value = "joinPro")
	public String joinPro(@RequestParam HashMap<String, String> member, Model model) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String securePasswd = passwordEncoder.encode(member.get("member_pw"));
		String member_address = member.get("member_address1") + "/" + member.get("member_address2");
		member.put("member_pw", securePasswd);
		member.put("member_address", member_address);
		
		int insertCount = service.registMember(member);
		if(insertCount > 0) { // 가입 성공
			service.insertPoint(member.get("member_id"));
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
