package com.java.dao;

import java.util.List;

import com.java.domain.ReplyVO;


public interface ReplyDAO {
	void replyinsertBoard(ReplyVO vo);
	void updateBoard(ReplyVO vo);
	void deleteBoard(ReplyVO vo);
	ReplyVO getreply(ReplyVO vo);
	List<ReplyVO> getreplyList(ReplyVO vo);
	
}