package com.itwillbs.movie.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.movie.mapper.LikeMapper;

@Service
public class LikeService {
	
	@Autowired
	private LikeMapper mapper;
	
	public boolean findLike(HashMap<String, String> like) {
		return mapper.findLike(like);
	}
	
	public int insertLike(HashMap<String, String> like) {
		return mapper.insertLike(like);
	}
	public int deleteLike(HashMap<String, String> like) {
		return mapper.deleteLike(like);
	}
	
	public int updateLike(HashMap<String, String> like) {
		return mapper.updateLike(like);
	}
	
}
