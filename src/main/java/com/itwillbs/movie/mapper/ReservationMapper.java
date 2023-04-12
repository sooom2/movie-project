package com.itwillbs.movie.mapper;

import java.util.*;

public interface ReservationMapper {
	// 영화관 조회
	List<HashMap<String, String>> selectCinema();

	// 영화 정보 조회
	List<HashMap<String, String>> selectMovieInfo();

	// 영화 리스트 조회
	List<HashMap<String, String>> selectmoviesList(String cd);
	
	
}
