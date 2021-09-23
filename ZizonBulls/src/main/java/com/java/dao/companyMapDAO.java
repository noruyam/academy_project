package com.java.dao;

import java.util.List;

import com.java.domain.companyMapVO;

public interface companyMapDAO {
	
	void insertBoard(companyMapVO vo);
	void updateBoard(companyMapVO vo);
	void deleteBoard(companyMapVO vo);
	companyMapVO getBoard(companyMapVO vo);
	List<companyMapVO> getBoardList();
}
