package com.java.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.domain.trashMapVO;

@Repository("trashMapDAO")
public class trashMapDAOImpl implements trashMapDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void insertTrashMap(trashMapVO vo) {
		System.out.println(">>>> trashService.insertTrashMap() 호출");
		mybatis.insert("trashMapDAO.insertTrashMap", vo);

	}

	@Override
	public void updateTrashMap(trashMapVO vo) {
		System.out.println(">>>> trashService.updateTrashMap() 호출");
		mybatis.update("trashMapDAO.updateTrashMap", vo);

	}

	@Override
	public void deleteTrashMap(trashMapVO vo) {
		System.out.println(">>>> trashService.deleteTrashMap() 호출");
		mybatis.delete("trashMapDAO.deleteTrashMap", vo);

	}

	@Override
	public trashMapVO getTrashMap(trashMapVO vo) {
		System.out.println(">>>> trashService.gettTrashMap() 호출");
		return mybatis.selectOne("trashMapDAO.getTrashMap", vo);

	}
	@Override
	public int getTrashMapListCnt(trashMapVO vo) {
		System.out.println(">>>> trashService.gettTrashMap() 호출");
		return mybatis.selectOne("trashMapDAO.getTrashMapListCnt", vo);
	}
	@Override
	public List<trashMapVO> getTrashMapList() {
		System.out.println(">>>> trashService.getTrashMapList() 호출");
		// TrashMapMapper.xml에 namespace
		return mybatis.selectList("trashMapDAO.getTrashMapList");
	}

	@Override
	public void updateCntTrashMap(trashMapVO vo) {
		// TODO Auto-generated method stub
		mybatis.update("trashMapDAO.updateCntTrashMap", vo);
	}

	
	@Override
	public trashMapVO trashMapGetFileName(trashMapVO vo) {
		System.out.println(">>>> trashService.trashMapGetFileName() 호출");
		return mybatis.selectOne("trashMapDAO.trashMapGetFileName", vo);

	}
	
	@Override
	public List<trashMapVO> searchList(trashMapVO vo) {
		System.out.println("다오임플"+vo.getTmSearchList());
		return mybatis.selectList("trashMapDAO.searchList",vo);
	}
}
