package com.itwillbs.movie.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.movie.mapper.MovieRegisterMapper;

@Service
public class MovieRegisterServie {
	
	@Autowired
	private MovieRegisterMapper mapper;
	
	//영화등록
	public int registMovie(HashMap<String, String> movie) {
		return mapper.registMovie(movie);
	}
	
	//영화 목록
	public List<HashMap<String, String>> selectMoives() {
		return mapper.selectMovies();
	}
	
	//영화 상세정보
	public HashMap<String, String> selectMovie(String info_movie_code) {
		return mapper.selectMovie(info_movie_code);
	}
	
	//영화삭제
	public int deleteMovie(String info_movie_code) {
		return mapper.deleteMovie(info_movie_code);
	}
	
	//영화정보수정
	public int updateMovie(HashMap<String, String> movie) {
		return mapper.updateMovie(movie);
	}


}
