package com.itwillbs.movie.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.movie.mapper.MovieRegisterMapper;

@Service
public class MovieRegisterService {
	
	@Autowired
	private MovieRegisterMapper mapper;
	//영화 목록
	public List<HashMap<String, String>> selectMovies() {
		return mapper.selectMovies();
	}
	//상영예정 영화 목록 
	public List<HashMap<String, String>> selectCommingMovies() {
		return mapper.selectCommingMovies();
	}
	//최신 영화 목록
	public List<HashMap<String, String>> selectAscendingMovies() {
		return mapper.selectAscendingMovies();
	}
	
	
	//영화 상세정보
	public HashMap<String, String> selectMovie(String info_movie_code) {
		return mapper.selectMovie(info_movie_code);
	}
	//영화 상세정보 - 리뷰
	public HashMap<String, String> selectMovieReview(String info_movie_code) {
		return mapper.selectMovieReview(info_movie_code);
	}
	
	
	//영화등록
	public int registMovie(HashMap<String, String> movie) {
		return mapper.registMovie(movie);
	}
	
	
	//스케쥴의 상세정보
	public HashMap<String, String> selectSchMovie(String sch_code) {
		return mapper.selectSchMovie(sch_code);
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

	//영화일정 등록
	public int scheduleRegister(HashMap<String, String> movieSchedule) {
		return mapper.scheduleRegister(movieSchedule);
	}

	//영화 일정 목록	
	public List<HashMap<String, String>> selectSchedule() {
		return mapper.selectScheduleList();
	}

	public List<HashMap<String, String>> cinemaNameSort() {
		return mapper.cinemaNameSort();
	}

	public List<HashMap<String, String>> screenNameSort() {
		return mapper.screenNameSort();
	}

	public List<HashMap<String, String>> movieNameSort() {
		return mapper.movieNameSort();
	}

	public List<HashMap<String, String>> schDateSort() {
		return mapper.schDateSort();
	}

	public List<HashMap<String, String>> schStartSort() {
		return mapper.schStartSort();
	}

	public List<HashMap<String, String>> schLastSort() {
		return mapper.schLastSort();
	}
	
	//영화일정 상세정보
	public HashMap<String, String> detailSchedule(String sch_code) {
		return mapper.selectSchedule(sch_code);
	}
	//영화일정 삭제
	public int deleteSchedule(String sch_code) {
		return mapper.deleteSchedule(sch_code);
	}

	public int movieScheduleUpdatePro(HashMap<String, String> schedule) {
		return mapper.movieScheduleUpdate(schedule);
	}


	public HashMap<String, String> infoMovieCode(String info_movie_title) {
		return mapper.infoMovieCode(info_movie_title);
	}

	public int lastTimeUpdate(HashMap<String, String> schedule) {
		return mapper.lastTimeUpdate(schedule);
	}

	public List<HashMap<String, String>> infoMovieCodeSort() {
		return mapper.infoMovieCodeSort();
	}

	public List<HashMap<String, String>> infoMovieNameSort() {
		return mapper.infoMovieNameSort();
	}

	public List<HashMap<String, String>> infoYearSort() {
		return mapper.infoYearSort();
	}

	public List<HashMap<String, String>> infoTimeSort() {
		return mapper.infoTimeSort();
	}

	public List<HashMap<String, String>> infoShowDateSort() {
		return mapper.infoShowDateSort();
	}

	public List<HashMap<String, String>> infoEndDateSort() {
		return mapper.infoEndDateSort();
	}

	public List<HashMap<String, String>> infoStorySort() {
		return mapper.infoStorySort();
	}


	


}
