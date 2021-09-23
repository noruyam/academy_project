package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dao.nanumDAOImpl;
import com.java.domain.nanumVO;

@Service("nanumService")
public class nanumServiceImpl implements nanumService{
	
	@Autowired
	private nanumDAOImpl nanumDAO;
	
	@Override
	public void insertBoard(nanumVO vo) {
		System.out.println(">> boardService.getBoardList() 호출");
		nanumDAO.insertBoard(vo);
	}

	@Override
	public void updateBoard(nanumVO vo) {
		System.out.println(">> boardService.updateBoard() 호출");
		nanumDAO.updateBoard(vo);
	}

	@Override
	public void deleteBoard(nanumVO vo) {
		System.out.println(">> boardService.deleteBoard() 호출");
		nanumDAO.deleteBoard(vo);
	}

	@Override
	public nanumVO getBoard(nanumVO vo) {
		System.out.println(">> boardService.getBoard() 호출");
		
		return nanumDAO.getBoard(vo);
	}

	@Override
	public List<nanumVO> getBoardList() {
		System.out.println(">> boardService.getBoardList() 호출");
		
		return nanumDAO.getBoardList();
	}
	
}
		
		
