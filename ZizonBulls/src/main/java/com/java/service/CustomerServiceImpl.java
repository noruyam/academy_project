package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dao.CustomerDAO;
import com.java.domain.CustomerVO;

@Service("customerService")
public class CustomerServiceImpl implements CustomerService{
	
	@Autowired
	private CustomerDAO customerDAO;
	
	@Override
	public void insertBoard(CustomerVO vo) {
		System.out.println(">> boardService.getBoardList() 호출");
		customerDAO.insertBoard(vo);
	}

	@Override
	public void updateCustomerInfo(CustomerVO vo) {
		System.out.println(">> customerService.updateCustomerInfo() 호출");
		customerDAO.updateCustomerInfo(vo);
	}
	
	@Override
	public void deleteCustomerInfo(CustomerVO vo) {
		System.out.println(">> customerService.deleteCustomerInfo() 호출 ");
		customerDAO.deleteCustomerInfo(vo);
	}
	
	@Override
	public CustomerVO getCustomerIdPwd(CustomerVO vo) {
		System.out.println(">> boardService.getCustomerIdPwd() 호출");
		
		return customerDAO.getCustomerIdPwd(vo);
	}

	@Override
	public List<CustomerVO> getBoardList() {
		System.out.println(">> boardService.getBoardList() 호출");
		
		return customerDAO.getBoardList();
	}

	@Override
	public CustomerVO idCheck_Login(CustomerVO vo) {
		System.out.println("커스터머서비스임플 도는 중 " +  vo.getCusId() + "/n");
		return customerDAO.idCheck(vo);
	}
	
	@Override
	public List<CustomerVO> idCheck(){
		return customerDAO.idCheck();
	}

	@Override
	public int customerInsert(CustomerVO vo) {
		return customerDAO.customerInsert(vo);
	}

	@Override
	   public CustomerVO idCheck_Join(CustomerVO vo) {
	      System.out.println("Service성공 " +  vo.getCusId() + "/n");
	      return customerDAO.idCheck_Join(vo);
	   }

	
	
}
		
		
