package com.itwillbs.movie.mapper;

import java.util.*;

public interface ReservationMapper {
	// 영화관 조회
	List<HashMap<String, String>> selectCinema();

	// 영화 정보 조회
	List<HashMap<String, String>> selectMovieInfo();

	// 상영관 조회
//	List<HashMap<String, String>> selectMovieTime();


	List<HashMap<String, String>> selectmoviesList(String cd);
	
	
}
