package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class companyMapController {
	@RequestMapping(value = "/webapp/index.do")
	public String main() {
		System.out.println("호출");
		return "/webapp/index";
	}

	@RequestMapping(value = "/companyMap/{url}.do")
	public String userJoin(@PathVariable String url) {
		System.out.println("호출");
		return "/companyMap/"+url;
	}
	@RequestMapping(value = "{url}.do")
	public String map(@PathVariable String url) {
		System.out.println("호출");
		return url;
	}
	
}
