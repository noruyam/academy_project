package com.java.service;

import java.util.List;

import com.java.domain.qnaVO;

public interface qnaService {

	// CRUD 기능 메소드
	
	void insertBoard(qnaVO vo);
	void updateBoard(qnaVO vo);
	void deleteBoard(qnaVO vo);
	qnaVO getBoard(qnaVO vo);
	List<qnaVO> getBoardList();
}
