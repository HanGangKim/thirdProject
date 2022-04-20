package com.human.java.dao;

import com.human.java.domain.CompanyVO;
import com.human.java.domain.CustomerVO;

public interface CompanyDAO {

	public int companyInsert(CompanyVO vo);
	
	public CompanyVO companyLogin(CompanyVO vo);
	
	public int idCheck(String id);
	
	public CompanyVO companyconfirmpassword(CompanyVO vo);
	
	public void companyupdate(CompanyVO vo);
}
