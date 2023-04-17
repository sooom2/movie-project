package com.itwillbs.movie.mapper;

import java.util.*;

import org.apache.ibatis.annotations.*;

public interface ReservationMapper {
	// 영화관 조회
	List<HashMap<String, String>> selectCinema();

	// 영화 정보 조회
	List<HashMap<String, String>> selectMovieInfo();

	// 영화 리스트 조회
	List<HashMap<String, String>> selectmoviesList(String CnItemCd);

	// 상영 시간 조회
	List<HashMap<String, String>> selectMovieTimeList(@Param("CnItemCd") String CnItemCd, @Param("MvItemCd") String MvItemCd, @Param("dateCd") String dateCd);

	List<HashMap<String, String>> selectReservationList(String schCd);
	
	
}
