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

	@Override
	public int companyInsert(CompanyVO vo) {
		
		System.out.println("===============");
		System.out.println("companyInsert 서비스 호출");
		System.out.println("CompanyVO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		
		return companyDAO.companyInsert(vo);
	}

	@Override
	public CompanyVO companyLogin(CompanyVO vo) {
		
		System.out.println("===============");
		System.out.println("companyLogin 서비스 호출");
		System.out.println("CompanyVO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
	
		return companyDAO.companyLogin(vo);
	}

	@Override
	public int idCheck(CompanyVO vo, String id) {
		if(companyDAO.idCheck(id)==0) {
			return 0;
		} else {
			return 1;
		}
	}

	@Override
	public CompanyVO companyconfirmpassword(CompanyVO vo) {
		System.out.println("===============");
		System.out.println("companyconfirmpassword 서비스 호출");
		System.out.println("VO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		return companyDAO.companyconfirmpassword(vo);
	}
	
}

