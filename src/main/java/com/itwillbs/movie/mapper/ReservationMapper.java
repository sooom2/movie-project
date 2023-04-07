package com.itwillbs.movie.mapper;

import java.util.*;

public interface ReservationMapper {
	// 영화관 조회
	List<HashMap<String, String>> selectCinema();
}
