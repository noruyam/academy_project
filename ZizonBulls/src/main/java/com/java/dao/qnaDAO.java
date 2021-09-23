package com.java.dao;

import java.util.List;

import com.java.domain.qnaVO;

public interface qnaDAO {
	
	void insertBoard(qnaVO vo);
	void updateBoard(qnaVO vo);
	void deleteBoard(qnaVO vo);
	qnaVO getBoard(qnaVO vo);
	List<qnaVO> getBoardList();
}
