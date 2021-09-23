package com.java.service;

import java.util.List;

import com.java.domain.companyMapVO;

public interface companyMapService {

	// CRUD 기능 메소드
	
	void insertBoard(companyMapVO vo);
	void updateBoard(companyMapVO vo);
	void deleteBoard(companyMapVO vo);
	companyMapVO getBoard(companyMapVO vo);
	List<companyMapVO> getBoardList();
}
