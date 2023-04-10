package com.itwillbs.movie.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
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

	public List<HashMap<String, String>> selectFood() {
		return mapper.selectFood();
	}
	
	public List<HashMap<String, String>> selectTicket() {
		return mapper.selectTicket();
	}

	public HashMap<String, String> selectCode(String item_code) {
		return mapper.selectCode(item_code);
	}

	public HashMap<String, String> selectMemberId(String id) {
		return mapper.selectMemberId(id);
	}

	public int insertPay(HashMap<String, String> pay) {
		return mapper.insertPay(pay);
	}

	public int updatePoint(HashMap<String, String> point) {
		return mapper.updatePoint(point);
	}

	public List<HashMap<String, String>> selectPay() {
		return mapper.selectPay();
	}
	
	

}
