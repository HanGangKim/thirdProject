package com.human.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.dao.MasterCompanyDAOImpl;
import com.human.java.domain.MasterCompanyVO;

@Service("masterCompanyService")
public class MasterCompanyServiceImpl implements MasterCompanyService{
	
	@Autowired
	private MasterCompanyDAOImpl masterCompanyDAO;
	
	// select company
	@Override
	public List<MasterCompanyVO>  masterCompany() {
		
		return masterCompanyDAO.masterCompany();
	}
	
	// update company
	@Override
	public void masterCompanyUpdate(MasterCompanyVO vo) {
		
		masterCompanyDAO.masterCompanyUpdate(vo);
		
	}

	// company DnR select 
	@Override
	public List<MasterCompanyVO> masterCompanyDR() {
		return masterCompanyDAO.masterCompanyDR();
	}

	//company Title Search select
	@Override
	public List<MasterCompanyVO> masterCompanySearchTitle(MasterCompanyVO vo, String title) {
		
		return masterCompanyDAO.masterCompanySearchTitle(vo, title);
	}

	// 거절된 업체 목록 조회
	@Override
	public List<MasterCompanyVO> masterCompanySearchTitleR(MasterCompanyVO vo, String title) {

		return masterCompanyDAO.masterCompanySearchTitleR(vo, title);
	}

	
}
