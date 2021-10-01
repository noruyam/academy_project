package com.java.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.domain.nanumVO;
import com.java.service.nanumService;

@Controller
public class nanumController {
	
	@Autowired
	private nanumService nanumService;
	
	 @GetMapping (value = "/getBoardList.do" )
     @ResponseBody
      public List<nanumVO> getBoarList(){
    	  System.out.println("getBoarList cont");
          return nanumService.getBoardList();
      }
          
	
	@RequestMapping("/saveBoard.do") 
	public String saveBoard(nanumVO vo) throws IOException{
		nanumService.insertBoard(vo);
		return "redirect:/getBoardList.do";
	}
	@RequestMapping("/getBoard.do")
	public void getBoard(nanumVO vo, Model model) {
	System.out.println("글번호 :" + vo.getSeq());
	// 조회수를 올리는 기능 구현
	// controller -> service -> DAO 까지 모두 생성
	// 문제는 조회수를 올리는 기능을 글을 읽는 상황에서 사용하는 기능
	nanumService.updateCount(vo);
	// 조회하는 기능 구현
	model.addAttribute("board",nanumService.getBoard(vo));
	}
	@RequestMapping(value="/insertBoard.do")
	public String insertBoard(nanumVO vo) {
		
	System.out.println("/insertBoard.do 호출");
	nanumService.insertBoard(vo);
	return null;
	}
	
	@RequestMapping(value="/updateBoard.do")
	@ResponseBody
	public void updateBoard(nanumVO vo) {
		System.out.println("/updateBoard.do 호출");
		System.out.println(vo.getSeq());
		System.out.println(vo.getWriter());
		System.out.println(vo.getTitle());
		System.out.println(vo.getContent());
		nanumService.updateBoard(vo);
//		return "redirect:/getBoard.do?seq=" + vo.getSeq();

//		return null;
	}
	
	@RequestMapping(value="/deleteBoard.do")
	public String deleteBoard(nanumVO vo) {
		System.out.println("/deleteBoard.do 호출");
		nanumService.deleteBoard(vo);
		return "redirect:/getBoardList.do";
	}
}
