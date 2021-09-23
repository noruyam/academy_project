package com.java.dao;

import java.util.List;

import com.java.domain.customerVO;
import com.java.domain.trashMapVO;

public interface trashMapDAO {
	
	void insertBoard(trashMapVO vo);
	void updateBoard(trashMapVO vo);
	void deleteBoard(trashMapVO vo);
	trashMapVO getBoard(trashMapVO vo);
	List<trashMapVO> getBoardList();
}
