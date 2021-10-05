package com.java.dao;

import java.util.List;

import com.java.domain.chatVO;
import com.java.domain.trashMapVO;

public interface chatDAO {
	
	void insertBoard(chatVO vo);
	void updateBoard(chatVO vo);
	void deleteBoard(chatVO vo);
	trashMapVO getBoard(trashMapVO vo);
	List<chatVO> getBoardList();
}
