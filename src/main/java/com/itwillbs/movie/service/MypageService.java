package com.itwillbs.movie.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.movie.mapper.MypageMapper;
import com.itwillbs.movie.vo.MemberVO;

@Service
public class MypageService {
	
	@Autowired
	private MypageMapper mapper;

	public MemberVO getMemberInfo(String id) {
		return mapper.selectMemberInfo(id);
	}

	public String getPasswd(String id) {
		return mapper.selectPasswd(id);
	}

	public int updateMemberInfo(HashMap<String, String> update) {
		return mapper.updateMemberInfo(update);
	}

	public int quitMember(HashMap<String, String> quit) {
		return mapper.deleteMember(quit);
	}

	public  List<HashMap<String, String>> qnaList(String id) {
		return mapper.qnaList(id);
	}


	public List<HashMap<String, String>> revList(String id) {
		return mapper.revList(id);
	}

	public int insertReview(HashMap<String, String> review) {
		return  mapper.insertReview(review);
	}
	
	public HashMap<String, String> selectMemberId(String id) {
		return mapper.selectMemberId(id);
	}

	public List<HashMap<String, String>> movieList(String id) {
		return mapper.movieList(id);
	}

	public int insertPoint(String id) {
		return mapper.insertPoint(id);
	}

	public List<HashMap<String, String>> pointList(String id) {
		return mapper.pointList(id);
	}

	public List<HashMap<String, String>> payList(String id) {
		return mapper.payList(id);
	}




	
	
	
	

}
