package com.java.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.domain.customerVO;

@Repository("customerDAO")
public class customerDAOImpl implements customerDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void insertBoard(customerVO vo) {
		System.out.println(">>>> customerService.insertBoard() 호출");
		mybatis.insert("customerDAO.insertBoard",vo);
	}

	@Override
	public void updateBoard(customerVO vo) {
		System.out.println(">>>> customerService.updateBoard() 호출");
		mybatis.update("customerDAO.updateBoard",vo);
	}

	@Override
	public void deleteBoard(customerVO vo) {
		System.out.println(">>>> customerService.deleteBoard() 호출");
		mybatis.delete("customerDAO.deleteBoard",vo);
	}

	@Override
	public customerVO getBoard(customerVO vo) {
		System.out.println(">>>> customerService.gettBoard() 호출");
		return mybatis.selectOne("customerDAO.getBoard",vo);
	}

	@Override
	public List<customerVO> getBoardList() {
		System.out.println(">>>> customerService.getBoardList() 호출");
		// BoardMapper.xml에 namespace
		return mybatis.selectList("customerDAO.getBoardList");
	}
		
}
	
	
	