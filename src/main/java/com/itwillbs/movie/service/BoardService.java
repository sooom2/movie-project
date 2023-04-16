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

	// 1대1 문의 목록
	public List<HashMap<String, String>> getOneBoardList() {
		return mapper.selectOneBoardList();
	}

	// 공지사항 등록
	public int registNoticeBoard(HashMap<String, String> map) {
		
		return mapper.insertNoticeBoard(map);
	}

	// 공지사항 목록
	public List<HashMap<String, String>> getNoticeBoardList() {
		
		return mapper.selectNoticeBoardList();
	}

	// 공지사항 상세
	public HashMap<String, String> getNoticeDetail(HashMap<String, String> map) {
		
		return mapper.selectNoticeDetail(map);
	}

	// 공지사항 수정창
	public HashMap<String, String> getNoticeBoard(String notice_code) {
		
		return mapper.selectNoticeBoard(notice_code);
	}

	// 공지사항 수정
	public int registNoticeUpdate(HashMap<String, String> map) {
		
		return mapper.updateNoticeBoard(map);
	}

	// 자주묻는 질문 목록
	public List<HashMap<String, String>> getFaqBoardList() {
		
		return mapper.selectFaqBoardList();
	}

	// 자주묻는 질문 등록
	public int registFaqBoard(HashMap<String, String> map) {
		
		return mapper.insertFaqBoard(map);
	}

	// 공지사항 삭제
	public int getNoticeDelete(HashMap<String, String> map) {
		
		return mapper.deleteNoticeBoard(map);
	}

	
	
	
	
	
	
	
}
