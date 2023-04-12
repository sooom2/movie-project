package com.itwillbs.movie.service;

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
	
	

}
