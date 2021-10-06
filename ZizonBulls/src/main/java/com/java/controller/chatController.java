package com.java.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.domain.CustomerVO;
import com.java.service.CustomerService;
import com.java.service.chatService;

@Controller
public class chatController {

	@Autowired
	CustomerService customerservice;
	
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
    
//    // trashMap 글목록 클릭하면 목록 불러와주는 기능
// 	@RequestMapping(value = "/test123.do", method = RequestMethod.POST)
// 	// ajax 리턴값을 주고싶을때 @ResponseBody 사용
// 	
// 	public List<CustomerVO> getTrashMap(CustomerVO vo, HttpServletRequest request, @RequestParam String phone) {
// 		System.out.println("test123 Controller");
// 		vo.setBusId(phone);
// 		customerservice.getBoardList();
// 		
// 		return customerservice.getBoardList();
// 	}
    
    
    
  // trashMap 글목록 클릭하면 목록 불러와주는 기능
	@RequestMapping(value = "/test123.do", method = RequestMethod.POST)
	// ajax 리턴값을 주고싶을때 @ResponseBody 사용
	@ResponseBody
	public int getTrashMap(CustomerVO vo, HttpServletRequest request) {
		System.out.println("test123 Controller");
		System.out.println(vo.getBusId());
//		customerservice.getBoardList();
		
		int test123=customerservice.getBoardList(vo);;
		System.out.println(test123);
		return test123;
	}
};
