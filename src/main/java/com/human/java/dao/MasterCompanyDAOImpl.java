package com.human.java.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.domain.MasterCompanyVO;

@Repository("masterCompanyDAO")
public class MasterCompanyDAOImpl implements MasterCompanyDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public List<MasterCompanyVO> masterCompany() {

		return mybatis.selectList("masterCompanyMapper.masterCompanySelect");
	}
	
	@Override
	public void masterCompanyUpdate(MasterCompanyVO vo) {
		System.out.println("DAO 호출");

		mybatis.update("masterCompanyMapper.masterCompanyUpdate",vo);
	}

	@Override
	public List<MasterCompanyVO> masterCompanyDR() {
		return mybatis.selectList("masterCompanyMapper.masterCompanySelectDR");
	}

}
