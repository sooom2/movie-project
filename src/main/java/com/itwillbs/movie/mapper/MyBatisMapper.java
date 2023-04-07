package com.itwillbs.movie.mapper;

import java.util.HashMap;
import java.util.List;

public interface MyBatisMapper {

	int insertMember(HashMap<String, String> member);
	
	// 로그인 확인
	HashMap<String, String> chekUser(HashMap<String, String> login);
	
	// 관리자 아이템 등록
	int registItem(HashMap<String, String> item);

	List<HashMap<String, String>> selectItem();
	
}














