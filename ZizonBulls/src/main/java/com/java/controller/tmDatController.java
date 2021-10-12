package com.java.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.java.domain.tmDatVO;
import com.java.service.tmDatService;

@Controller
public class tmDatController {
	@Autowired
	private tmDatService tmDatService;

	// 파일 저장위치 변수로 지정
	
	// TmDat 처음 새글등록하는 기능
	@RequestMapping(value = "/insertTmDat.do")
	@ResponseBody
	public String insertTmDat(tmDatVO vo) throws IOException {
		
		tmDatService.inserttmDat(vo);
		return null;
	}

	// TmDat 글목록 클릭하면 목록 불러와주는 기능
	@RequestMapping(value = "/getTmDat.do")
	// ajax 리턴값을 주고싶을때 @ResponseBody 사용
	@ResponseBody
	public tmDatVO getTmDat(tmDatVO vo) {
		// 글목록 클릭하면서 조회수 기능까지 함께 실행하는 기능
		return tmDatService.gettmDat(vo);
	}
	// TmDat 글목록 클릭하면 목록 불러와주는 기능
		@RequestMapping(value = "/getTmDatListCnt.do")
		// ajax 리턴값을 주고싶을때 @ResponseBody 사용
		@ResponseBody
		public int getTmDatListCnt(tmDatVO vo) {
			// 글목록 클릭하면서 조회수 기능까지 함께 실행하는 기능
			return tmDatService.gettmDatListCnt(vo);
		}

	// TmDat 글 목록 보여주는 기능
	@GetMapping(value = "/gettmDatList.do")
	// ajax 리턴값을 주고싶을때 @ResponseBody 사용
	@ResponseBody
	// 글목록에 날짜 형식 바꾸기 위한 어노테이션
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss")
	public List<tmDatVO> getTmDatList(tmDatVO vo) {
		System.out.println(vo.getTmPostNum());
		return tmDatService.gettmDatList(vo);
	}

	

	// TmDat 글 수정해주는 기능
	@RequestMapping(value = "/updateTmDat.do")
	@ResponseBody
	public String updateTmDat(tmDatVO vo) {
		tmDatService.updatetmDat(vo);
		return null;
	}

	// TmDat 글 삭제해주는 기능
	@RequestMapping(value = "/deleteTmDat.do")
	@ResponseBody
	public tmDatVO deleteTmDat(tmDatVO vo) {
		
		
		tmDatService.deletetmDat(vo);

		return vo;

	}



}