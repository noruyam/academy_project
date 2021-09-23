package com.java.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.domain.trashVO;

@Repository("trashDAO")
public class trashDAOImpl implements trashDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void insertBoard(trashVO vo) {
		System.out.println(">>>> boardService.insertBoard() 호출");
		mybatis.insert("BoardDAO.insertBoard",vo);
	}

	@Override
	public void updateBoard(trashVO vo) {
		System.out.println(">>>> boardService.updateBoard() 호출");
		mybatis.update("BoardDAO.updateBoard",vo);
	}

	@Override
	public void deleteBoard(trashVO vo) {
		System.out.println(">>>> boardService.deleteBoard() 호출");
		mybatis.delete("BoardDAO.deleteBoard",vo);
	}

	@Override
	public trashVO getBoard(trashVO vo) {
		System.out.println(">>>> boardService.gettBoard() 호출");
		return mybatis.selectOne("BoardDAO.getBoard",vo);
	}

	@Override
	public List<trashVO> getBoardList() {
		System.out.println(">>>> boardService.getBoardList() 호출");
		// BoardMapper.xml에 namespace
		return mybatis.selectList("BoardDAO.getBoardList");
	}
		
}
	
	
	