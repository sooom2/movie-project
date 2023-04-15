package com.itwillbs.movie.mapper;

import java.util.HashMap;
import java.util.List;

import com.itwillbs.movie.vo.BoardVO;

public interface BoardMapper {

	// 분실물 등록
	int insertLostBoard(BoardVO board);
	
	// 분실물 목록
	List<BoardVO> selectLostBoardList();

	// 분실물 상세
	HashMap<String, String> selectLostDetail(HashMap<String, String> map);

	// 분실물 삭제
	int deleteLostBoard(HashMap<String, String> map);

	// 1대1 등록
	int insertOneBoard(HashMap<String, String> map);

	// 1대1 문의 목록
	List<HashMap<String, String>> selectOneBoardList();

	// 공지사항 등록
	int insertNoticeBoard(HashMap<String, String> map);

	// 공지사항 목록
	List<HashMap<String, String>> selectNoticeBoardList();

	// 공지사항 상세
	HashMap<String, String> selectNoticeDetail(HashMap<String, String> map);

	// 자주묻는 질문 목록
	List<HashMap<String, String>> selectFaqBoardList();


	
	
	
}
