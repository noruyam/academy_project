package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dao.trashMapDAO;
import com.java.domain.trashMapVO;

@Service("trashMapService")
public class trashMapServiceImpl implements trashMapService{
	
	@Autowired
	private trashMapDAO trashMapDAO;
	
	@Override
	public void insertTrashMap(trashMapVO vo) {
		System.out.println(">> TrashMapService.insertTrashMap() 호출");
		System.out.println(vo.getTmAddr());
		trashMapDAO.insertTrashMap(vo);
	}

	@Override
	public void updateTrashMap(trashMapVO vo) {
		System.out.println(">> TrashMapService.updateTrashMap() 호출");
		trashMapDAO.updateTrashMap(vo);
	}

	@Override
	public void deleteTrashMap(trashMapVO vo) {
		System.out.println(">> TrashMapService.deleteTrashMap() 호출");
		trashMapDAO.deleteTrashMap(vo);
	}

	@Override
	public trashMapVO getTrashMap(trashMapVO vo) {
		System.out.println(">> TrashMapService.getTrashMap() 호출");
		
		return trashMapDAO.getTrashMap(vo);
	}

	@Override
	public List<trashMapVO> getTrashMapList() {
		System.out.println(">> TrashMapService.getTrashMapList() 호출");	
		return trashMapDAO.getTrashMapList();
	}
	
	
	public void updateCntTrashMap(trashMapVO vo) {
		System.out.println(">> TrashMapService.updateCntTrashMap() 호출");
		trashMapDAO.updateCntTrashMap(vo);
	}

	@Override
	public trashMapVO trashMapGetFileName(trashMapVO vo) {
		return trashMapDAO.trashMapGetFileName(vo);
	}
}
		
		
