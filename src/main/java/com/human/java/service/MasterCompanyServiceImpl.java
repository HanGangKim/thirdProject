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
		// TODO Auto-generated method stub
		System.out.println("service 호출");
		
		masterCompanyDAO.masterCompanyUpdate(vo);
		
	}

	@Override
	public List<MasterCompanyVO> masterCompanyDR() {
		return masterCompanyDAO.masterCompanyDR();
	}

	@Override
	public List<MasterCompanyVO> masterCompanySearchTitle(MasterCompanyVO vo, String title) {
		System.out.println("===============");
		System.out.println("masterCompanySearchTitle D 서비스 호출");
		System.out.println("===============");
		
		return masterCompanyDAO.masterCompanySearchTitle(vo, title);
	}

	@Override
	public List<MasterCompanyVO> masterCompanySearchTitleR(MasterCompanyVO vo, String title) {
		System.out.println("===============");
		System.out.println("masterCompanySearchTitle R 서비스 호출");
		System.out.println("===============");
		return masterCompanyDAO.masterCompanySearchTitleR(vo, title);
	}

	
}
