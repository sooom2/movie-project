package com.itwillbs.movie.mapper;

import java.util.HashMap;
import java.util.List;

public interface MyBatisMapper {

	int insertMember(HashMap<String, String> member);
	
	// 로그인 확인
	HashMap<String, String> chekUser(HashMap<String, String> login);
	
	// 관리자 상품 등록
	int registItem(HashMap<String, String> item);
	
	// 관리자 상품 목록
	List<HashMap<String, String>> selectItem();
	
	// 관리자 상품 삭제
	int deleteItem(String item_code);
	
	// ----------------------------------------------------------------------------------------
	

	
}














