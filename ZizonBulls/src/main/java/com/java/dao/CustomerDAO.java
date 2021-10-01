package com.java.dao;

import java.util.List;

import com.java.domain.CustomerVO;

public interface CustomerDAO {
	
	void insertBoard(CustomerVO vo);
	void updateCustomerInfo(CustomerVO vo);
	void deleteCustomerInfo(CustomerVO vo);
	CustomerVO getCustomerIdPwd(CustomerVO vo);
	List<CustomerVO> getBoardList();
	
	CustomerVO idCheck(CustomerVO vo);
	public List<CustomerVO> idCheck();
	int customerInsert(CustomerVO vo);
	public CustomerVO idCheck_Join(CustomerVO vo);
}
