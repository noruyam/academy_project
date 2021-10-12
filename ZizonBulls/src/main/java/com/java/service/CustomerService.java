package com.java.service;

import java.util.List;

import com.java.domain.CustomerVO;

public interface CustomerService {

	// CRUD 기능 메소드
	
	void insertBoard(CustomerVO vo);
	void updateCustomerInfo(CustomerVO vo);
	void deleteCustomerInfo(CustomerVO vo);
	CustomerVO getCustomerIdPwd(CustomerVO vo);
	int getBoardList(CustomerVO vo);

	public CustomerVO idCheck_Login(CustomerVO vo);
	public List<CustomerVO> idCheck();
	public int customerInsert(CustomerVO vo);
	public CustomerVO idCheck_Join(CustomerVO vo);
	
	void uploadProfilePicture(CustomerVO vo);
	
}
