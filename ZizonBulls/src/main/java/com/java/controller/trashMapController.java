package com.java.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.java.domain.trashMapVO;
import com.java.service.trashMapService;

@Controller
public class trashMapController {
	@Autowired
	private trashMapService trashMapService;

	@RequestMapping(value = "/insertTrashMap.do")
	@ResponseBody
	public String insertTrashMap(trashMapVO vo) {
		System.out.println(vo.getTmContent());
		System.out.println(vo.getTmAddr());
		System.out.println(vo.getTmTitle());
		System.out.println(vo.getTmFname());
		System.out.println(vo.getTmFnameEn());
		trashMapService.insertTrashMap(vo);
		
//		return "/trashMap/insertTrashMap";
		return null;
	}

	@GetMapping(value = "/getTrashMapList.do")
	@ResponseBody
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd HH:mm:ss")
	public List<trashMapVO> getTrashMapList() {
		
		return trashMapService.getTrashMapList();
	}

	@RequestMapping(value = "/updateTrashMap.do")
	@ResponseBody
	public String updateTrashMap(trashMapVO vo) {
		System.out.println(vo.getTmContent());
		System.out.println(vo.getTmAddr());
		System.out.println(vo.getTmTitle());
		System.out.println(vo.getTmFname());
		System.out.println(vo.getTmFnameEn());
		trashMapService.updateTrashMap(vo);
//		return "/trashMap/insertTrashMap";
		return null;
	}

	@RequestMapping(value = "/deleteTrashMap.do")
	@ResponseBody
	public String deleteTrashMap(trashMapVO vo) {
		System.out.println(vo.getTmContent());
		System.out.println(vo.getTmAddr());
		System.out.println(vo.getTmTitle());
		trashMapService.deleteTrashMap(vo);
//		return "/trashMap/insertTrashMap";
		return null;

		
		}
	
	@RequestMapping(value = "/updateCntTrashMap.do")
	@ResponseBody
	public String updateCntTrashMap(trashMapVO vo) {
		System.out.println(vo.getTmContent());
		System.out.println(vo.getTmAddr());
		System.out.println(vo.getTmTitle());
		trashMapService.updateCntTrashMap(vo);
//			return "/trashMap/insertTrashMap";
		return null;
	}
		
	
	
	@RequestMapping(value = "/getTrashMap.do")
	@ResponseBody
	public trashMapVO getTrashMap(trashMapVO vo) {
		System.out.println(vo.getTmPostNum());
		
		
		System.out.println(vo.getTmPostNum());
//		return "/trashMap/insertTrashMap";
		trashMapService.updateCntTrashMap(vo);
		return trashMapService.getTrashMap(vo);
	}
		
//			@GetMapping(value = "/test2.do", produces = MediaType.APPLICATION_JSON_VALUE)
//		    public void getAllUsers(){
//		        System.out.println("test2.do");
//		    }

//		@RequestMapping(value = "/insertTrashMap1.do")
//		
//		public String insertTrashMap1(trashMapVO vo,Model model) {
//			model.addAttribute("trashMapList", trashMapService.getTrashMapList());
//			return "/index";
//		}

//		@GetMapping(value = "/getTrashMapList.do", produces = MediaType.APPLICATION_JSON_VALUE)
//		@ResponseBody
//	    public List<trashMapVO> getTrashMapList(){
//	        return trashMapService.getTrashMapList();
//	    }

//		@RequestMapping(value = "/trashMap/{url}.do")
//		public String userJoin(@PathVariable String url) {
//			System.out.println("ȣ��");
//			return "/trashMap/"+url;
//		}

	}


