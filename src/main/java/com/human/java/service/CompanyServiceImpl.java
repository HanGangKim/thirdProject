package com.human.java.service;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.domain.CompanyVO;
import com.human.java.dao.CompanyDAOImpl;

@Service("companyService")
public class CompanyServiceImpl implements CompanyService{

	@Autowired 
	private CompanyDAOImpl companyDAO;

	@Override
	public int companyInsert(CompanyVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public CompanyVO companyLogin(CompanyVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	
	
}

