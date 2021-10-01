package com.java.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.domain.CustomerVO;

@Repository("customerDAO")
public class CustomerDAOImpl implements CustomerDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void insertBoard(CustomerVO vo) {
		System.out.println(">>>> customerService.insertBoard() 호출");
		mybatis.insert("customerDAO.insertBoard",vo);
	}

	@Override
	public void updateCustomerInfo(CustomerVO vo) {
		System.out.println(">>>> customerService.updateCustomerInfo() 호출");
		int i = mybatis.update("CustomerDAO.updateCustomerInfo",vo);
		System.out.println(" 결과 : "  + i);
		
	}

	@Override
	public void deleteCustomerInfo(CustomerVO vo) {
		System.out.println(">>>> customerService.deleteBoard() 호출");
		mybatis.delete("CustomerDAO.deleteCustomerInfo",vo);
	}
		

	@Override
	public CustomerVO getCustomerIdPwd(CustomerVO vo) {
		System.out.println(">>>> customerService.getCustomerIdPwd() 호출");
		return mybatis.selectOne("CustomerDAO.getCustomerIdPwd",vo);
	}

	@Override
	public List<CustomerVO> getBoardList() {
		System.out.println(">>>> customerService.getBoardList() 호출");
		// BoardMapper.xml에 namespace
		return mybatis.selectList("customerDAO.getBoardList");
	}

	@Override
	public CustomerVO idCheck(CustomerVO vo) {
		System.out.println("커스터머다오임플 도는중");
		System.out.println( vo.getCusId());
		System.out.println( vo.getPass());
		return mybatis.selectOne("CustomerDAO.idCheck", vo);
	}

	@Override
	public List<CustomerVO> idCheck() {
		System.out.println("커스터머다오임플 도는중");
		
		
		return mybatis.selectList("CustomerDAO.idCheck");
	}
	
	
	@Override
	public int customerInsert(CustomerVO vo) {
		
		return mybatis.insert("CustomerDAO.customerInsert", vo);
	}

	@Override
	   public CustomerVO idCheck_Join(CustomerVO vo) {
	      System.out.println("DAO idCheck_Join() 성공");
	      System.out.println( vo.getCusId());
	      
	      return mybatis.selectOne("CustomerDAO.idCheck_Join", vo);
	   }

}
	
	
	