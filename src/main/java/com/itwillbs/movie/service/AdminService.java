package com.itwillbs.movie.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.movie.mapper.MyBatisMapper;

@Service
public class AdminService {
	@Autowired
	private MyBatisMapper mapper;

	public int registItem(HashMap<String, String> item) {
		return mapper.registItem(item);
	}

	public List<HashMap<String, String>> selectItem() {
		return mapper.selectItem();
	}

	public int deleteItem(String item_code) {
		return mapper.deleteItem(item_code);
	}


}
