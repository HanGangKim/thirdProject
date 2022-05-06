package com.human.java.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	@Override
	public List<MasterCompanyVO> masterCompanySearchTitle(MasterCompanyVO vo, String title) {
		
		System.out.println("===============");
		System.out.println("masterCompanySearchTitle D 다오 호출");
		System.out.println("===============");
		
		Map<String, Object> parms = new HashMap<String, Object>();
		parms.put("title", title);
		
		return mybatis.selectList("masterCompanyMapper.masterCompanySearchTitle" , parms);
	}
	
	@Override
	public List<MasterCompanyVO> masterCompanySearchTitleR(MasterCompanyVO vo, String title) {
		System.out.println("===============");
		System.out.println("masterCompanySearchTitle R 다오 호출");
		System.out.println("===============");
		
		Map<String, Object> parms = new HashMap<String, Object>();
		parms.put("title", title);
		
		return mybatis.selectList("masterCompanyMapper.masterCompanySearchTitleR" , parms);
	}

}
