package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dao.chatDAO;
import com.java.domain.chatVO;
import com.java.domain.trashMapVO;

@Service("chatService")
public class chatServiceImpl implements chatService{
	
	@Autowired
	private chatDAO chatDAO;

	@Override
	public void insertBoard(chatVO vo) {
		System.out.println(">> chatService.getBoardList() 호출");
		chatDAO.insertBoard(vo);
		
	}

	@Override
	public void updateBoard(chatVO vo) {
		System.out.println(">> chatService.updateBoard() 호출");
		chatDAO.updateBoard(vo);
	}

	@Override
	public void deleteBoard(chatVO vo) {
		System.out.println(">> chatService.deleteBoard() 호출");
		chatDAO.deleteBoard(vo);
	}

	@Override
	public trashMapVO getBoard(trashMapVO vo) {
		System.out.println(">> chatService.getBoard() 호출");
		
		return chatDAO.getBoard(vo);
	}

	@Override
	public List<chatVO> getBoardList() {
		System.out.println(">> chatService.getBoardList() 호출");
		
		return chatDAO.getBoardList();
	}


}
		
		
