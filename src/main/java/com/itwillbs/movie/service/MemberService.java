package com.itwillbs.movie.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.movie.mapper.MyBatisMapper;

@Service
public class MemberService {
	
	@Autowired
	private MyBatisMapper mapper;

	//회원추가
	public int insertMember(HashMap<String, String> member) {
		return mapper.insertMember(member);
	}
	//로그인
	public HashMap<String, String> checkUser(HashMap<String, String> login) {
		return mapper.chekUser(login);
	}
	
	//회원목록조회
	public List<HashMap<String, String>> selectMember() {
		return mapper.selectMember();
	}

	
}
