package com.human.java.service;

import com.human.java.domain.CompanyVO;
import com.human.java.domain.ExhibitionVO;

public interface CompanyService {

	// 회원가입
	public int companyInsert(CompanyVO vo);
		
	// 로그인
	public CompanyVO companyLogin(CompanyVO vo);
	
	// 아이디 중복체크
	public int idCheck(CompanyVO vo, String id);
	
}