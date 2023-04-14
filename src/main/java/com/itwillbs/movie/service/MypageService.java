package com.itwillbs.movie.service;

import java.util.HashMap;

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
	
	

}
