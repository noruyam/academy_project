package com.java.dao;

import java.util.List;

import com.java.domain.customerVO;

public interface customerDAO {
	
	void insertBoard(customerVO vo);
	void updateBoard(customerVO vo);
	void deleteBoard(customerVO vo);
	customerVO getBoard(customerVO vo);
	List<customerVO> getBoardList();
}
