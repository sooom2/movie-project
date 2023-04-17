package com.itwillbs.movie.mapper;

import java.util.HashMap;
import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

public interface MovieRegisterMapper {
	
	//영화등록
	int registMovie(HashMap<String, String> movie);
	
	//영화목록
	List<HashMap<String, String>> selectMovies();
	//상영예정작목록 
	List<HashMap<String, String>> selectCommingMovies();
	//최신영화순 조회
	List<HashMap<String, String>> selectAscendingMovies();
	//영화상세목록
	HashMap<String, String> selectMovie(String info_movie_code);
	//영화 상세정보 - 리뷰
	HashMap<String, String> selectMovieReview(String info_movie_code);
	
	
	//스케쥴상세
	HashMap<String, String> selectSchMovie(String sch_code);
	
	
	//영화삭제
	int deleteMovie(String info_movie_code);
	
	//영화정보수정
	int updateMovie(HashMap<String, String> movie);

	//영화관리스트
	List<HashMap<String, String>> selectCinema();

	
	//영화관-상영관 조회
	List<HashMap<String, String>> selectScreen(String cinema_name);
	
	//영화상영일정추가  ..@Param("boardno")int boardno, @Param("userno")int userno
	int scheduleRegister(@RequestParam("movieSchedule") HashMap<String, String> movieSchedule);
	
	//영화상영일정목록
	List<HashMap<String, String>> selectScheduleList();

	List<HashMap<String, String>> cinemaNameSort();
	List<HashMap<String, String>> screenNameSort();
	List<HashMap<String, String>> movieNameSort();
	List<HashMap<String, String>> schDateSort();
	List<HashMap<String, String>> schStartSort();
	List<HashMap<String, String>> schLastSort();

	//영화상영 상세정보
	HashMap<String, String> selectSchedule(String sch_code);
	
	//영화 상영일정 삭제
	int deleteSchedule(String sch_code);

	int movieScheduleUpdate(HashMap<String, String> schedule);


	HashMap<String, String> infoMovieCode(String info_movie_title);


	int lastTimeUpdate(HashMap<String, String> schedule);

	List<HashMap<String, String>> infoMovieCodeSort();
	List<HashMap<String, String>> infoMovieNameSort();
	List<HashMap<String, String>> infoYearSort();
	List<HashMap<String, String>> infoTimeSort();
	List<HashMap<String, String>> infoShowDateSort();
	List<HashMap<String, String>> infoEndDateSort();
	List<HashMap<String, String>> infoStorySort();


}
