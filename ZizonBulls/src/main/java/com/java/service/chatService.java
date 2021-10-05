package com.java.service;

import java.util.List;

import com.java.domain.chatVO;
import com.java.domain.trashMapVO;

public interface chatService {

	// CRUD 기능 메소드
	
	void insertBoard(chatVO vo);
	void updateBoard(chatVO vo);
	void deleteBoard(chatVO vo);
	trashMapVO getBoard(trashMapVO vo);
	List<chatVO> getBoardList();
}
