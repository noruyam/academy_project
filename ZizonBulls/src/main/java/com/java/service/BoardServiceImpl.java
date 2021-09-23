//package com.java.service;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import com.java.dao.BoardDAO;
//import com.java.domain.BoardVO;
//
//@Service("boardService")
//public class BoardServiceImpl implements BoardService{
//	
//	@Autowired
//	private BoardDAO boardDAO;
//	
//	@Override
//	public void insertBoard(BoardVO vo) {
//		System.out.println(">> boardService.getBoardList() 호출");
//		boardDAO.insertBoard(vo);
//	}
//
//	@Override
//	public void updateBoard(BoardVO vo) {
//		System.out.println(">> boardService.updateBoard() 호출");
//		boardDAO.updateBoard(vo);
//	}
//
//	@Override
//	public void deleteBoard(BoardVO vo) {
//		System.out.println(">> boardService.deleteBoard() 호출");
//		boardDAO.deleteBoard(vo);
//	}
//
//	@Override
//	public BoardVO getBoard(BoardVO vo) {
//		System.out.println(">> boardService.getBoard() 호출");
//		
//		return boardDAO.getBoard(vo);
//	}
//
//	@Override
//	public List<BoardVO> getBoardList() {
//		System.out.println(">> boardService.getBoardList() 호출");
//		
//		return boardDAO.getBoardList();
//	}
//	
//}
//		
//		
