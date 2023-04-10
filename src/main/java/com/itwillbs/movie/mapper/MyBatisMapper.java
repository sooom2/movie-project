package com.itwillbs.movie.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface MyBatisMapper {

	int insertMember(HashMap<String, String> member);
	
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
	
	// ----------------------------------------------------------------------------------------
	
	// 스토어 기프트카드 조회
	List<HashMap<String, String>> selectGift();
	
	List<HashMap<String, String>> selectFood();
	
	List<HashMap<String, String>> selectTicket();
	
	// 스토어 상세페이지 조회(상품 코드로)
	HashMap<String, String> selectCode(String item_code);
	
	// 스토어 결제 입력
	int insertPay(HashMap<String, String> pay);
	
	
	// ------------------------------------------------------------------------------------------
	
	// 상영중인 영화 페이지 보기
	List<HashMap<String, String>> screeningMovie();


	
	// 영화 상세 정보 페이지
	HashMap<String, String> selectMovieInfo(String movieCd);
	

	
	
}














