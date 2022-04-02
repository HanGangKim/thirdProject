package com.human.java.dao;

import com.human.java.domain.CustomerVO;

public interface CustomerDAO {

	public int customerInsert(CustomerVO vo);
	
	public CustomerVO customerLogin(CustomerVO vo);
	
}
