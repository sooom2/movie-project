package com.itwillbs.movie.mapper;

import java.util.HashMap;
import java.util.List;

public interface CinemaMapper {


	List<HashMap<String, String>> location();
	List<HashMap<String, String>> locationCinema(String location_name);
	List<HashMap<String, String>> noticeList();
	List<HashMap<String, String>> cinemaDetail(String cinema_code);
	List<HashMap<String, Object>> schList(String cinema_code);
//	List<HashMap<String, String>> schList(String cinema_code, String play_date);
	

}
