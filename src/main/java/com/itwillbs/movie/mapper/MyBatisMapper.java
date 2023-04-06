package com.itwillbs.movie.mapper;

import java.util.HashMap;

public interface MyBatisMapper {

	int insertMember(HashMap<String, String> member);

	HashMap<String, String> chekUser(HashMap<String, String> login);
	
}














