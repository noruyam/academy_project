package com.java.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.domain.tmDatVO;

@Repository("tmDatDAO")
public class tmDatDAOImpl implements tmDatDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void inserttmDat(tmDatVO vo) {
		System.out.println(">>>> trashService.inserttmDat() 호출");
		mybatis.insert("tmDatDAO.inserttmDat", vo);

	}

	@Override
	public void updatetmDat(tmDatVO vo) {
		System.out.println(">>>> trashService.updatetmDat() 호출");
		mybatis.update("tmDatDAO.updatetmDat", vo);

	}

	@Override
	public void deletetmDat(tmDatVO vo) {
		System.out.println(">>>> trashService.deletetmDat() 호출");
		mybatis.delete("tmDatDAO.deletetmDat", vo);

	}

	@Override
	public tmDatVO gettmDat(tmDatVO vo) {
		System.out.println(">>>> trashService.getttmDat() 호출");
		return mybatis.selectOne("tmDatDAO.gettmDat", vo);

	}
	@Override
	public int gettmDatListCnt(tmDatVO vo) {
		System.out.println(">>>> trashService.getttmDat() 호출");
		return mybatis.selectOne("tmDatDAO.gettmDatListCnt", vo);
	}
	@Override
	public List<tmDatVO> gettmDatList(tmDatVO vo) {
		System.out.println(">>>> trashService.gettmDatList() 호출");
		// tmDatMapper.xml에 namespace
		return mybatis.selectList("tmDatDAO.gettmDatList",vo);
	}

	@Override
	public void updateCnttmDat(tmDatVO vo) {
		// TODO Auto-generated method stub
		mybatis.update("tmDatDAO.updateCnttmDat", vo);
	}

	
	@Override
	public tmDatVO tmDatGetFileName(tmDatVO vo) {
		System.out.println(">>>> trashService.tmDatGetFileName() 호출");
		return mybatis.selectOne("tmDatDAO.tmDatGetFileName", vo);

	}

	@Override
	public List<tmDatVO> searchList(tmDatVO vo) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
