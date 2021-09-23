package com.java.service;

import java.util.List;

public interface BoardService {

	// CRUD 기능 메소드
	
	void insertBoard();
	void updateBoard();
	void deleteBoard();
	void getBoard();
	List<String> getBoardList();
}
