package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dao.companyMapDAO;
import com.java.domain.companyMapVO;

@Service("companyMapService")
public class companyMapServiceImpl implements companyMapService{
	
	@Autowired
	private companyMapDAO companyMapDAO;
	
	@Override
	public void insertBoard(companyMapVO vo) {
		System.out.println(">> boardService.getBoardList() 호출");
		companyMapDAO.insertBoard(vo);
	}

	@Override
	public void updateBoard(companyMapVO vo) {
		System.out.println(">> boardService.updateBoard() 호출");
		companyMapDAO.updateBoard(vo);
	}

	@Override
	public void deleteBoard(companyMapVO vo) {
		System.out.println(">> boardService.deleteBoard() 호출");
		companyMapDAO.deleteBoard(vo);
	}

	@Override
	public companyMapVO getBoard(companyMapVO vo) {
		System.out.println(">> boardService.getBoard() 호출");
		
		return companyMapDAO.getBoard(vo);
	}

	@Override
	public List<companyMapVO> getBoardList() {
		System.out.println(">> boardService.getBoardList() 호출");
		
		return companyMapDAO.getBoardList();
	}
	
}
		
		
