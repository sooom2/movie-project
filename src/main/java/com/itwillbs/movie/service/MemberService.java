package com.itwillbs.movie.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.movie.mapper.MyBatisMapper;

@Service
public class MemberService {
	
	@Autowired
	private MyBatisMapper mapper;

	public int insertMember(HashMap<String, String> member) {
		return mapper.insertMember(member);
	}

	public HashMap<String, String> checkUser(HashMap<String, String> login) {
		return mapper.chekUser(login);
	}
	
	
	
}
