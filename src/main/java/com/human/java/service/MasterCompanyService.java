package com.human.java.service;

import java.util.List;

import com.human.java.domain.MasterCompanyVO;

public interface MasterCompanyService {
	
	// company select 
	public List<MasterCompanyVO> masterCompany ();
	
	// company update
	public void masterCompanyUpdate(MasterCompanyVO vo);
	
	// company DnR select 
	public List<MasterCompanyVO> masterCompanyDR();
	
	//company Title Search select
	public List<MasterCompanyVO> masterCompanySearchTitle(MasterCompanyVO vo, String title);
	
	
	public List<MasterCompanyVO> masterCompanySearchTitleR(MasterCompanyVO vo, String title);

}
