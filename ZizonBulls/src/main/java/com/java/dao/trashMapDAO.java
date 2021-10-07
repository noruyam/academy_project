package com.java.dao;

import java.util.List;

import com.java.domain.trashMapVO;

public interface trashMapDAO {
	
	void insertTrashMap(trashMapVO vo);
	void updateTrashMap(trashMapVO vo);
	void deleteTrashMap(trashMapVO vo);
	trashMapVO getTrashMap(trashMapVO vo);
	List<trashMapVO> getTrashMapList();
	void updateCntTrashMap(trashMapVO vo);
	trashMapVO trashMapGetFileName(trashMapVO vo);
	int getTrashMapListCnt(trashMapVO vo);
}
