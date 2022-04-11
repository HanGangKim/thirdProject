package com.human.java.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.dao.MasterCompanyDAOImpl;
import com.human.java.domain.MasterCompanyVO;

@Service("masterCompanyServie")
public class MasterCompanyServiceImpl implements MasterCompanyService{
	
	@Autowired
	private MasterCompanyDAOImpl masterCompanyDAO;
	
	@Override
	public String masterCompany(MasterCompanyVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	
}
