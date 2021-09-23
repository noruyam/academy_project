package com.java.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.domain.nanumVO;

@Repository("nanumDAO")
public class nanumDAOImpl implements namumDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void insertBoard(nanumVO vo) {
		System.out.println(">>>> nanumService.insertBoard() 호출");
		mybatis.insert("nanumDAO.insertBoard",vo);
	}

	@Override
	public void updateBoard(nanumVO vo) {
		System.out.println(">>>> nanumService.updateBoard() 호출");
		mybatis.update("nanumDAO.updateBoard",vo);
	}

	@Override
	public void deleteBoard(nanumVO vo) {
		System.out.println(">>>> nanumService.deleteBoard() 호출");
		mybatis.delete("nanumDAO.deleteBoard",vo);
	}

	@Override
	public nanumVO getBoard(nanumVO vo) {
		System.out.println(">>>> nanumService.gettBoard() 호출");
		return mybatis.selectOne("nanumDAO.getBoard",vo);
	}

	@Override
	public List<nanumVO> getBoardList() {
		System.out.println(">>>> nanumService.getBoardList() 호출");
		// BoardMapper.xml에 namespace
		return mybatis.selectList("nanumDAO.getBoardList");
	}
		
}
	
	
	