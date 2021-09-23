package com.java.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.domain.trashMapVO;

@Repository("trashMapDAO")
public class trashMapDAOImpl implements trashMapDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void insertBoard(trashMapVO vo) {
		System.out.println(">>>> trashService.insertBoard() 호출");
		mybatis.insert("trashDAO.insertBoard",vo);
	}

	@Override
	public void updateBoard(trashMapVO vo) {
		System.out.println(">>>> trashService.updateBoard() 호출");
		mybatis.update("trashDAO.updateBoard",vo);
	}

	@Override
	public void deleteBoard(trashMapVO vo) {
		System.out.println(">>>> trashService.deleteBoard() 호출");
		mybatis.delete("trashDAO.deleteBoard",vo);
	}

	@Override
	public trashMapVO getBoard(trashMapVO vo) {
		System.out.println(">>>> trashService.gettBoard() 호출");
		return mybatis.selectOne("trashDAO.getBoard",vo);
	}

	@Override
	public List<trashMapVO> getBoardList() {
		System.out.println(">>>> trashService.getBoardList() 호출");
		// BoardMapper.xml에 namespace
		return mybatis.selectList("trashDAO.getBoardList");
	}
		
}
	
	
	