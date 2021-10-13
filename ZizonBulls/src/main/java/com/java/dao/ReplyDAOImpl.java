package com.java.dao;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.domain.ReplyVO;
 
@Repository("ReplyDAO")
public class ReplyDAOImpl implements ReplyDAO {
    
    @Autowired //의존관계 주입
    private SqlSessionTemplate mybatis;

	@Override
	public void replyinsertBoard(ReplyVO vo) {
		System.out.println(">>>> ReplyDAO.insertBoard() �샇異�");
		mybatis.insert("ReplyDAO.replyinsertBoard",vo);
		
	}

	@Override
	public void updateBoard(ReplyVO vo) {
		System.out.println(">>>> ReplyDAO.updateBoard() �샇異�");
		mybatis.update("ReplyDAO.updateBoard",vo);
		
	}

	@Override
	public void deleteBoard(ReplyVO vo) {
		System.out.println(">>>> ReplyDAO.deleteBoard() �샇異�");
		mybatis.delete("ReplyDAO.deleteBoard",vo);
		
	}

	@Override
	public ReplyVO getreply(ReplyVO vo) {
		System.out.println(">>>> ReplyDAO.getBoard() �샇異�");
		return mybatis.selectOne("ReplyDAO.getBoard",vo);
	}

	@Override
	public List<ReplyVO> getreplyList(ReplyVO vo) {
		System.out.println(">>>> ReplyDAO.getBoardList() �샇異�");
		return mybatis.selectList("ReplyDAO.getreplyList",vo);
	}

	

 
   
}


