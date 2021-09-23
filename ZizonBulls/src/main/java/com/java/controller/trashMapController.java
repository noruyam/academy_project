package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class trashMapController {

	@RequestMapping(value = "/trashMap/{url}.do")
	public String userJoin(@PathVariable String url) {
		System.out.println("호출");
		return "/trashMap/"+url;
	}
	
}
