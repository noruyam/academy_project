package com.java.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dao.ReplyDAOImpl;
import com.java.domain.ReplyVO;
 

 
@Service ("ReplyService")
public class ReplyServiceImpl implements ReplyService {
    
    
    @Autowired
    private ReplyDAOImpl replyDAO;    

	@Override
	public void replyinsertBoard(ReplyVO vo) {
		System.out.println(">> Replyservice.getBoardList() �샇異�");
		replyDAO.replyinsertBoard(vo);
		
	}

	@Override
	public void updateBoard(ReplyVO vo) {
		System.out.println(">> ReplyService.updateBoard() �샇異�");
		replyDAO.updateBoard(vo);
		
	}

	@Override
	public void deleteBoard(ReplyVO vo) {
		System.out.println(">> ReplyService.deleteBoard() �샇異�");
		replyDAO.deleteBoard(vo);
		
	}

	@Override
	public ReplyVO getreply(ReplyVO vo) {
		System.out.println(">> ReplyService.getBoard() �샇異�");
		return replyDAO.getreply(vo);
	}

	@Override
	public List<ReplyVO> getreplyList(ReplyVO vo) {
		System.out.println(">> nanumService.getBoardList() �샇異쒙옙");
		return replyDAO.getreplyList(vo);
	}
  
    
    
}
