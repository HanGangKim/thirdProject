package com.human.java.dao;

import java.util.List;

import com.human.java.domain.MasterCompanyVO;

public interface MasterCompanyDAO {
	
	// select company
	public List<MasterCompanyVO> masterCompany();
	
	// update company
	void updateMasterCompany(MasterCompanyVO vo);

}
