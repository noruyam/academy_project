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
		 System.out.println(vo.getTitle());
		System.out.println(">>>> nanumDAO.insertBoard() �샇異�");
		mybatis.insert("nanumDAO.insertBoard",vo);
	}

	@Override
	public void updateBoard(nanumVO vo) {
		System.out.println(">>>> nanumDAO.updateBoard() �샇異�");
		mybatis.update("nanumDAO.updateBoard",vo);
	}

	@Override
	public void deleteBoard(nanumVO vo) {
		System.out.println(">>>> nanumDAO.deleteBoard() �샇異�");
		mybatis.delete("nanumDAO.deleteBoard",vo);
	}

	@Override
	public nanumVO getBoard(nanumVO vo) {
		System.out.println(">>>> nanumDAO.getBoard() �샇異�");
		return mybatis.selectOne("nanumDAO.getBoard",vo);
	}

	@Override
	public List<nanumVO> getBoardList() {
		System.out.println(">>>> nanumDAO.getBoardList() �샇異�");
		// BoardMapper.xml�뿉 namespace
		return mybatis.selectList("nanumDAO.getBoardList");
	}

	public void updateCount(nanumVO vo) {
		mybatis.update("nanumDAO.updateCount",vo);
		
	}
		
}
	
	
	