package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dao.customerDAO;
import com.java.domain.customerVO;

@Service("customerService")
public class customerServiceImpl implements customerService{
	
	@Autowired
	private customerDAO customerDAO;
	
	@Override
	public void insertBoard(customerVO vo) {
		System.out.println(">> boardService.getBoardList() 호출");
		customerDAO.insertBoard(vo);
	}

	@Override
	public void updateBoard(customerVO vo) {
		System.out.println(">> boardService.updateBoard() 호출");
		customerDAO.updateBoard(vo);
	}

	@Override
	public void deleteBoard(customerVO vo) {
		System.out.println(">> boardService.deleteBoard() 호출");
		customerDAO.deleteBoard(vo);
	}

	@Override
	public customerVO getBoard(customerVO vo) {
		System.out.println(">> boardService.getBoard() 호출");
		
		return customerDAO.getBoard(vo);
	}

	@Override
	public List<customerVO> getBoardList() {
		System.out.println(">> boardService.getBoardList() 호출");
		
		return customerDAO.getBoardList();
	}
	
}
		
		
