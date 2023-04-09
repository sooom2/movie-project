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
	int updateMovie(String info_movie_code);
}
