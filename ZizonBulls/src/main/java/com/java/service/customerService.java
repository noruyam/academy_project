package com.java.service;

import java.util.List;

import com.java.domain.customerVO;

public interface customerService {

	// CRUD 기능 메소드
	
	void insertBoard(customerVO vo);
	void updateBoard(customerVO vo);
	void deleteBoard(customerVO vo);
	customerVO getBoard(customerVO vo);
	List<customerVO> getBoardList();
}
