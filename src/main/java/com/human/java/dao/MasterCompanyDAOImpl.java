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

	public void updateMasterCompany(MasterCompanyVO vo) {

		mybatis.update("masterCompanyMapper.masterComapny",vo);
	}

}
