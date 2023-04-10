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
	//영화관리스트
	public List<HashMap<String, String>> selectCinema() {
		return mapper.selectCinema();
	}

	//영화관 선택하면 상영관나오게
	public List<HashMap<String, String>> selectScreen(String cinema_name) {
		return mapper.selectScreen(cinema_name);
	}

	public int scheduleRegister(HashMap<String, String> movieSchedule) {
		return mapper.scheduleRegister(movieSchedule);
	}

	//영화예매목록	
	public List<HashMap<String, String>> selectSchedule() {
		return mapper.selectScheduleList();
	}
	


}
