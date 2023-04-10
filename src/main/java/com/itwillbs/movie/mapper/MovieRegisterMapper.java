package com.itwillbs.movie.mapper;

import java.util.HashMap;
import java.util.List;

public interface MovieRegisterMapper {
	
	//영화등록
	int registMovie(HashMap<String, String> movie);
	
	//영화목록
	List<HashMap<String, String>> selectMovies();

	//영화상세목록
	HashMap<String, String> selectMovie(String info_movie_code);
	
	
	//영화삭제
	int deleteMovie(String info_movie_code);
	
	//영화정보수정
	int updateMovie(HashMap<String, String> movie);

	//영화관리스트
	List<HashMap<String, String>> selectCinema();

	//영화관-상영관 조회
	List<HashMap<String, String>> selectScreen(String cinema_name);
	
	//영화상영일정추가
	int scheduleRegister(HashMap<String, String> movieSchedule);
	
	//영화상영일정목록
	List<HashMap<String, String>> selectScheduleList();

}
