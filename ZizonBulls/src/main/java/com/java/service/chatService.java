package com.java.service;

import java.util.List;

import com.java.domain.chatVO;

public interface chatService {

	// CRUD 기능 메소드
	
	void insertBoard(chatVO vo);
	void updateBoard(chatVO vo);
	void deleteBoard(chatVO vo);
	chatVO getBoard(chatVO vo);
	List<chatVO> getBoardList();
}
