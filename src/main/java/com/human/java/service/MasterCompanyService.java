package com.human.java.service;

import java.util.List;

import com.human.java.domain.MasterCompanyVO;

public interface MasterCompanyService {
	
	// company select 
	public List<MasterCompanyVO>  masterCompany ();
	
	// company update

	public void masterCompanyUpdate(MasterCompanyVO vo);
	
	
}
