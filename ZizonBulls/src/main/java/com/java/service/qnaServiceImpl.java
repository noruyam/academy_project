package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dao.qnaDAO;
import com.java.domain.qnaVO;

@Service("qnaService")
public class qnaServiceImpl implements qnaService{
	
	@Autowired
	private qnaDAO qnaDAO;
	
	@Override
	public void insertBoard(qnaVO vo) {
		System.out.println(">> boardService.getBoardList() 호출");
		qnaDAO.insertBoard(vo);
	}

	@Override
	public void updateBoard(qnaVO vo) {
		System.out.println(">> boardService.updateBoard() 호출");
		qnaDAO.updateBoard(vo);
	}

	@Override
	public void deleteBoard(qnaVO vo) {
		System.out.println(">> boardService.deleteBoard() 호출");
		qnaDAO.deleteBoard(vo);
	}

	@Override
	public qnaVO getBoard(qnaVO vo) {
		System.out.println(">> boardService.getBoard() 호출");
		
		return qnaDAO.getBoard(vo);
	}

	@Override
	public List<qnaVO> getBoardList() {
		System.out.println(">> boardService.getBoardList() 호출");
		
		return qnaDAO.getBoardList();
	}
	
}
		
		
