package com.itwillbs.movie.mapper;

import java.util.HashMap;
import java.util.List;

import com.itwillbs.movie.vo.BoardVO;

public interface CinemaMapper {

	//중복되지않는 지역번호 찾기
	List<HashMap<String, String>> location_find();

	
	
}
