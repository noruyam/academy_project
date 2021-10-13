package com.java.service;

import java.util.List;

import com.java.domain.ReplyVO;

public interface ReplyService {
 
	public void replyinsertBoard(ReplyVO vo);

	public void updateBoard(ReplyVO vo);

	public void deleteBoard(ReplyVO vo);

	public ReplyVO getreply(ReplyVO vo);

	public List<ReplyVO> getreplyList(ReplyVO vo);
    
}