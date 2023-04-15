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
	public List<HashMap<String, String>> location() {
		return mapper.location();
	}

	public List<HashMap<String, String>> locationCinema(String location_name) {
		return mapper.locationCinema(location_name);
	}

	public List<HashMap<String, String>> noticeList() {
		return mapper.noticeList();
	}

	
	

	
	
}
