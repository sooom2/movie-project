package com.itwillbs.movie.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.movie.mapper.BoardMapper;
import com.itwillbs.movie.vo.BoardVO;

@Service
public class BoardService {

	@Autowired
	private BoardMapper mapper;
	
	// 분실물 저장
	public int registLostBoard(BoardVO board) {
		
//		System.out.println("BoardService" + board);
		return mapper.insertLostBoard(board);
	}
	
	// 고객센터 홈 분실물 목록과 관리자 분실물 목록
	public List<BoardVO> getLostBoardList() {
//		System.out.println("service: " + mapper.selectLostBoardList());
		return mapper.selectLostBoardList();
	}

	// 분실물 상세
	public HashMap<String, String> getLostDetail(HashMap<String, String> map) {
		
		return mapper.selectLostDetail(map);
	}

	// 분실물 삭제
	public int getLostDelete(HashMap<String, String> map) {
		
		return mapper.deleteLostBoard(map);
	}
	
	// 1대1 저장
	public int registOneBoard(HashMap<String, String> map) {
//		System.out.println("service: " + map);
		return mapper.insertOneBoard(map);
	}

	// 1대1 문의 내역
	public List<HashMap<String, String>> getOneBoardList() {
		return mapper.selectOneBoardList();
	}
	
	
	
	
	
	
}
