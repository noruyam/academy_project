package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.domain.trashMapVO;

@Controller
public class trashMapController {

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
		return "index";
	}
}
