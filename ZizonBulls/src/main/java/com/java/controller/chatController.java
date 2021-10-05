package com.java.controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.domain.trashMapVO;
import com.java.service.chatService;

@Controller
public class chatController {

	@Autowired
	chatService chatservice;
	
    @RequestMapping(value="/")
    public String main() {
        return "index";
    }
    
    @RequestMapping(value = "/chat", method = RequestMethod.GET)
    public String chat(Locale locale, Model model,String phone) {
    	System.out.println("채팅 시작");
    	System.out.println(phone);
    	model.addAttribute("phone",phone);
    	
        return "chat";
    }
    
 // trashMap 글목록 클릭하면 목록 불러와주는 기능
 	@RequestMapping(value = "/test123.do")
 	// ajax 리턴값을 주고싶을때 @ResponseBody 사용
 	@ResponseBody
 	public trashMapVO getTrashMap(trashMapVO vo) {
 		chatservice.getBoard(vo);
 		System.out.println(vo.getTmTitle());
// 		return trashMapService.getTrashMap(vo);
 		return chatservice.getBoard(vo);
 	}
    
};
