package com.human.java.service;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.domain.CompanyVO;
import com.human.java.dao.CompanyDAOImpl;
import com.human.java.dao.CustomerDAO;

@Service("companyService")
public class CompanyServiceImpl implements CompanyService{

	@Autowired 
	private CompanyDAOImpl companyDAO;
	
	// 회원가입
	@Override
	public int companyInsert(CompanyVO vo) {
		
		return companyDAO.companyInsert(vo);
	}

	// 로그인
	@Override
	public CompanyVO companyLogin(CompanyVO vo) {
	
		return companyDAO.companyLogin(vo);
	}

	// 아이디 중복체크
	@Override
	public int idCheck(CompanyVO vo, String id) {
		if(companyDAO.idCheck(id)==0) {
			return 0;
		} else {
			return 1;
		}
	}

	//비밀번호 확인
	@Override
	public CompanyVO companyconfirmpassword(CompanyVO vo) {
		return companyDAO.companyconfirmpassword(vo);
	}
	
	//업체 정보수정
	@Override
	public void companyupdate(CompanyVO vo) {
		
		companyDAO.companyupdate(vo);
	}
		
	// 업체 비밀번호 찾기
	@Override
	public CompanyVO companyFindPassword(CompanyVO vo) {
		return companyDAO.companyFindPassword(vo);
	}
	
	// 업체 정보 삭제
	@Override
	public int companyTotalDelete(CompanyVO vo) {
		
		return companyDAO.companyTotalDelete(vo);
	}
	
}

