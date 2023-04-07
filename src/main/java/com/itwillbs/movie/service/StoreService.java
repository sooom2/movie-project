package com.itwillbs.movie.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.movie.mapper.MyBatisMapper;

@Service
public class StoreService {
	@Autowired
	private MyBatisMapper mapper;

	public List<HashMap<String, String>> selectItem() {
		return mapper.selectGift();
	}
	
	

}