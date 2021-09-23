package com.java.dao;

import java.util.List;

import com.java.domain.chatVO;

public interface chatDAO {
	
	void insertBoard(chatVO vo);
	void updateBoard(chatVO vo);
	void deleteBoard(chatVO vo);
	chatVO getBoard(chatVO vo);
	List<chatVO> getBoardList();
}
