package com.java.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.domain.chatVO;
import com.java.domain.trashMapVO;

@Repository("chatDAO")
public class chatDAOImpl implements chatDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void insertBoard(chatVO vo) {
		System.out.println(">>>> boardService.insertBoard() 호출");
		mybatis.insert("BoardDAO.insertBoard",vo);
	}

	@Override
	public void updateBoard(chatVO vo) {
		System.out.println(">>>> boardService.updateBoard() 호출");
		mybatis.update("BoardDAO.updateBoard",vo);
	}

	@Override
	public void deleteBoard(chatVO vo) {
		System.out.println(">>>> boardService.deleteBoard() 호출");
		mybatis.delete("BoardDAO.deleteBoard",vo);
	}

	@Override
	public trashMapVO getBoard(trashMapVO vo) {
		System.out.println(">>>> boardService.gettBoard() 호출");
		return mybatis.selectOne("trashMapDAO.getTrashMap123",vo);
	}

	@Override
	public List<chatVO> getBoardList() {
		System.out.println(">>>> boardService.getBoardList() 호출");
		// BoardMapper.xml에 namespace
		return mybatis.selectList("BoardDAO.getBoardList");
	}
		
}
	
	
	