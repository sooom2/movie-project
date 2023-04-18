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

	int insertReview(HashMap<String, String> review);

	List<HashMap<String, String>> revList(String id);

	HashMap<String, String> selectMemberId(String id);

	List<HashMap<String, String>> movieList(String id);

	int insertPoint(String id);

	List<HashMap<String, String>> pointList(String id);




	



}
