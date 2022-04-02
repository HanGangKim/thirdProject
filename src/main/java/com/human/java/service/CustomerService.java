package com.human.java.service;

import com.human.java.domain.CustomerVO;


public interface CustomerService {

	// 회원가입
	public int customerInsert(CustomerVO vo);
	
	// 로그인
	public CustomerVO customerLogin(CustomerVO vo);

}
