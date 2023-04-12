package com.itwillbs.movie.mapper;

import java.util.HashMap;
import java.util.List;

import com.itwillbs.movie.vo.BoardVO;

public interface BoardMapper {

	// 분실물 저장
	int insertLostBoard(BoardVO board);
	
	// 분실물 목록
	List<BoardVO> selectLostBoardList();

	// 1대1 저장
	int insertOneBoard(HashMap<String, String> map);

	// 1대1 문의 목록
	List<HashMap<String, String>> selectOneBoardList();
	
	
	
}
