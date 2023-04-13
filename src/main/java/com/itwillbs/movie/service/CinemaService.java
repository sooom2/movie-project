package com.itwillbs.movie.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.movie.mapper.BoardMapper;
import com.itwillbs.movie.mapper.CinemaMapper;
import com.itwillbs.movie.vo.BoardVO;

@Service
public class CinemaService {

	@Autowired
	private CinemaMapper mapper;
	
	//중복되지않는 지역번호 찾기
	public List<HashMap<String, String>> location_find() {
		return mapper.location_find();
	}

	
	

	
	
}
