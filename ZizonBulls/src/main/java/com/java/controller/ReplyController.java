package com.java.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.java.domain.ReplyVO;
import com.java.service.ReplyService;


@Controller 
public class ReplyController {
 
	@Autowired
	private ReplyService replyService;
	
	@RequestMapping("/replysaveBoard.do") 
	public String replysaveBoard(ReplyVO vo) throws IOException{
		
		replyService.replyinsertBoard(vo);
		return "redirect:/getBoardList.do";
	}
	
	
	@RequestMapping(value="/replyinsertBoard.do")
	@ResponseBody
	public String replyinsertBoard(ReplyVO vo) {
		System.out.println(vo.getCusId());
		System.out.println(vo.getSeq());
		System.out.println(vo.getRecontent());
		System.out.println("/insertBoard.do 占쎌깈�빊占�");
		replyService.replyinsertBoard(vo);
		return null;
	}
	
	
	@RequestMapping(value="/replyupdateBoard.do")
	@ResponseBody
	public void replyupdateBoard(ReplyVO vo) {
		System.out.println("/updateBoard.do 占쎌깈�빊占�");
		System.out.println(vo.getSeq());
		replyService.updateBoard(vo);
		
	}
	
	
	@RequestMapping(value="/replydeleteBoard.do")
	public String replydeleteBoard(ReplyVO vo) {
		System.out.println("/deleteBoard.do 占쎌깈�빊占�");
		replyService.deleteBoard(vo);
		return "redirect:/getBoardList.do";
	}
	
	
	@RequestMapping("/replygetBoard.do")
	public ReplyVO replygetBoard(ReplyVO vo) {
		System.out.println("疫뀐옙甕곕뜇�깈 :" + vo.getSeq());		
		return replyService.getreply(vo);
	}
	
	@JsonFormat(shape=JsonFormat.Shape.STRING,pattern="yyyy-MM-dd")
	@RequestMapping (value = "/replygetreplyList.do" )
    @ResponseBody
    public List<ReplyVO> getreplyList(ReplyVO vo){
    	System.out.println("getBoardList �샇異�");
        return replyService.getreplyList(vo);
    }
	
}
