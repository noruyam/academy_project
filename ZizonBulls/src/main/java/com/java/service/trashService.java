package com.java.service;

import java.util.List;

import com.java.domain.trashVO;

public interface trashService {

	// CRUD 기능 메소드
	
	void insertBoard(trashVO vo);
	void updateBoard(trashVO vo);
	void deleteBoard(trashVO vo);
	trashVO getBoard(trashVO vo);
	List<trashVO> getBoardList();
	
}
