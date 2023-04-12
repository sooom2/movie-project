package com.itwillbs.movie.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.movie.mapper.MovieRegisterMapper;

@Service
public class MovieService {
	
	@Autowired
	private MovieRegisterMapper mapper;
	
	public List<HashMap<String, String>> selectMovies() {
		
		return mapper.selectMovies();
	}
	public HashMap<String, String> selectMovie(String movieCd) {
		
		return mapper.selectMovie(movieCd);
	}



}
