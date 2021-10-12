package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dao.tmDatDAO;
import com.java.domain.tmDatVO;

@Service("tmDatService")
public class tmDatServiceImpl implements tmDatService{
	
	@Autowired
	private tmDatDAO tmDatDAO;
	
	@Override
	public void inserttmDat(tmDatVO vo) {
		System.out.println(">> tmDatService.inserttmDat() 호출");
		
		tmDatDAO.inserttmDat(vo);
	}

	@Override
	public void updatetmDat(tmDatVO vo) {
		System.out.println(">> tmDatService.updatetmDat() 호출");
		tmDatDAO.updatetmDat(vo);
	}

	@Override
	public void deletetmDat(tmDatVO vo) {
		System.out.println(">> tmDatService.deletetmDat() 호출");
		tmDatDAO.deletetmDat(vo);
	}
	
	@Override
	public tmDatVO gettmDat(tmDatVO vo) {
		System.out.println(">> tmDatService.gettmDat() 호출");
		
		return tmDatDAO.gettmDat(vo);
	}
	@Override
	public int gettmDatListCnt(tmDatVO vo) {
		System.out.println(">> tmDatService.gettmDat() 호출");
		
		return tmDatDAO.gettmDatListCnt(vo);
	}
	@Override
	public List<tmDatVO> gettmDatList(tmDatVO vo) {
		System.out.println(">> tmDatService.gettmDatList() 호출");	
		return tmDatDAO.gettmDatList(vo);
	}
	
	
	public void updateCnttmDat(tmDatVO vo) {
		System.out.println(">> tmDatService.updateCnttmDat() 호출");
		tmDatDAO.updateCnttmDat(vo);
	}

	@Override
	public tmDatVO tmDatGetFileName(tmDatVO vo) {
		return tmDatDAO.tmDatGetFileName(vo);
	}

	@Override
	public List<tmDatVO> searchList(tmDatVO vo) {
		
		return	tmDatDAO.searchList(vo);
	}
}
		
		
