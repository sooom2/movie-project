package com.itwillbs.movie.mapper;

import java.util.HashMap;
import java.util.List;

import com.itwillbs.movie.vo.MemberVO;

public interface MyBatisMapper {

//	int insertMember(HashMap<String, String> member);
	
	//회원가입-수정
	int insertMember(MemberVO member);
	
	// 로그인 확인
	HashMap<String, String> chekUser(HashMap<String, String> login);
	
	//회원목록조회
	List<HashMap<String, String>> selectMember();
	
	// 회원 조회
	HashMap<String, String> selectMemberId(String id);
	
	
	// ----------------------------------------------------------------------------------------
	
	// 관리자 상품 등록
	int registItem(HashMap<String, String> item);
	
	// 관리자 상품 목록
	List<HashMap<String, String>> selectItem();
	
	// 관리자 상품 삭제
	int deleteItem(String item_code);
	
	// 관리자 상품 수정
	int updateItem(HashMap<String, String> item);
	
	// 관리자 결제 조회
	List<HashMap<String, String>> selectPay();
	
	// ----------------------------------------------------------------------------------------
	
	// 스토어 기프트카드 조회
	List<HashMap<String, String>> selectGift();
	
	List<HashMap<String, String>> selectFood();
	
	List<HashMap<String, String>> selectTicket();
	
	// 스토어 상세페이지 조회(상품 코드로)
	HashMap<String, String> selectCode(String item_code);
	
	// 스토어 결제 입력
	int insertPay(HashMap<String, String> pay);
	
	// 스토어 결제 후 포인트 적립
	int updatePoint(HashMap<String, String> point);
	
	// ------------------------------------------------------------------------------------------
	
	// 상영중인 영화 페이지 보기
	List<HashMap<String, String>> screeningMovie();


	
	// 영화 상세 정보 페이지
	HashMap<String, String> selectMovieInfo(String movieCd);




	

	
	
}














