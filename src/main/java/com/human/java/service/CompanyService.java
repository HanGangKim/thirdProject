package com.human.java.service;

import com.human.java.domain.CompanyVO;
import com.human.java.domain.CustomerVO;
import com.human.java.domain.ExhibitionVO;

public interface CompanyService {

	// 회원가입
	public int companyInsert(CompanyVO vo);
		
	// 로그인
	public CompanyVO companyLogin(CompanyVO vo);
	
	// 아이디 중복체크
	public int idCheck(CompanyVO vo, String id);
	
	//비밀번호 확인
	public CompanyVO companyconfirmpassword(CompanyVO vo);
	
	//업체 정보수정
	public void companyupdate(CompanyVO vo);
	
	// 업체 비밀번호 찾기
	public CompanyVO companyFindPassword(CompanyVO vo);
	
	// 업체 정보 삭제
	public int companyTotalDelete(CompanyVO vo);
	
}