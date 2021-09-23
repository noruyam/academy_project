package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dao.trashDAO;
import com.java.domain.trashVO;

@Service("trashService")
public class trashServiceImpl implements trashService{
	
	@Autowired
	private trashDAO trashDAO;
	
	@Override
	public void insertBoard(trashVO vo) {
		System.out.println(">> trashService.getBoardList() 호출");
		trashDAO.insertBoard(vo);
	}

	@Override
	public void updateBoard(trashVO vo) {
		System.out.println(">> trashService.updateBoard() 호출");
		trashDAO.updateBoard(vo);
	}

	@Override
	public void deleteBoard(trashVO vo) {
		System.out.println(">> trashService.deleteBoard() 호출");
		trashDAO.deleteBoard(vo);
	}

	@Override
	public trashVO getBoard(trashVO vo) {
		System.out.println(">> trashService.getBoard() 호출");
		
		return trashDAO.getBoard(vo);
	}

	@Override
	public List<trashVO> getBoardList() {
		System.out.println(">> trashService.getBoardList() 호출");
		
		return trashDAO.getBoardList();
	}
	
}
		
		
