package com.human.java.service;

import com.human.java.domain.CompanyVO;

public interface CompanyService {

	// 회원가입
	public int companyInsert(CompanyVO vo);
		
	// 로그인
	public CompanyVO companyLogin(CompanyVO vo);
}