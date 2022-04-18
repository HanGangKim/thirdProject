package com.human.java.dao;

import com.human.java.domain.CompanyVO;

public interface CompanyDAO {

	public int companyInsert(CompanyVO vo);
	
	public CompanyVO companyLogin(CompanyVO vo);
	
	public int idCheck(String id);
}
