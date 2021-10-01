package com.java.service;

import java.util.List;

import com.java.domain.nanumVO;

public interface nanumService {

	
	
	void insertBoard(nanumVO vo);
	void updateBoard(nanumVO vo);
	void deleteBoard(nanumVO vo);
	nanumVO getBoard(nanumVO vo);
	List<nanumVO> getBoardList();
	void updateCount(nanumVO vo);
}
