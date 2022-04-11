package com.human.java.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.domain.MasterCompanyVO;

@Repository("masterCompanyDAO")
public class MasterCompanyDAOImpl implements MasterCompanyDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public String masterCompany(MasterCompanyVO vo) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	

}
