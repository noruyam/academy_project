package com.java.dao;

import java.util.List;

import com.java.domain.customerVO;
import com.java.domain.trashVO;

public interface trashDAO {
	
	void insertBoard(trashVO vo);
	void updateBoard(trashVO vo);
	void deleteBoard(trashVO vo);
	trashVO getBoard(trashVO vo);
	List<trashVO> getBoardList();
}
