package com.java.dao;

import java.util.List;

import com.java.domain.nanumVO;

public interface namumDAO {
	
	void insertBoard(nanumVO vo);
	void updateBoard(nanumVO vo);
	void deleteBoard(nanumVO vo);
	nanumVO getBoard(nanumVO vo);
	List<nanumVO> getBoardList();
}
