package com.itwillbs.movie.mapper;

import java.util.HashMap;
import java.util.List;

import com.itwillbs.movie.vo.MemberVO;

public interface MypageMapper {

	MemberVO selectMemberInfo(String id);

	String selectPasswd(String id);

	int updateMemberInfo(HashMap<String, String> update);

	int deleteMember(HashMap<String, String> quit);

	List<HashMap<String, String>> qnaList(String id);


	



}
