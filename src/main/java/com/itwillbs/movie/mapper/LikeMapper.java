package com.itwillbs.movie.mapper;

import java.util.HashMap;
import java.util.List;

public interface LikeMapper {

	boolean findLike(HashMap<String , String> like);
	
	int insertLike(HashMap<String, String> like);
	
	int deleteLike(HashMap<String, String> like);
	
	int updateLike(HashMap<String, String> like);
}














