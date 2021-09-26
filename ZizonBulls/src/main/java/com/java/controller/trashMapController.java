package com.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.domain.trashMapVO;
import com.java.service.trashMapService;

@Controller
public class trashMapController {
	@Autowired
	private trashMapService trashMapService;
	
	@RequestMapping(value = "/trashMap/{url}.do")
	public String userJoin(@PathVariable String url) {
		System.out.println("ȣ��");
		return "/trashMap/"+url;
	}

		@RequestMapping(value = "/insertTrashMap.do")
	public String insertTrashMap(trashMapVO vo) {
		System.out.println(vo.getTmContent());
		System.out.println(vo.getTmAddr());
		System.out.println(vo.getTmTitle());
		trashMapService.insertTrashMap(vo);
		return "/trashMap/insertTrashMap";
	}
		
		
		@RequestMapping(value = "/insertTrashMap1.do")
		public String insertTrashMap1(trashMapVO vo,Model model) {
			model.addAttribute("trashMapList", trashMapService.getTrashMapList());
			return "/trashMap/getTrashMap";
		}
		
}
