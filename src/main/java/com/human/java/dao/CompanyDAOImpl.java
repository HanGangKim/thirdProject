package com.human.java.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.human.java.domain.CompanyVO;
import com.human.java.domain.CustomerVO;

@Repository("companyDAO")
public class CompanyDAOImpl implements CompanyDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public int companyInsert(CompanyVO vo) {

		return mybatis.insert("companyMapper.companyInsert", vo);
	}

	@Override
	public CompanyVO companyLogin(CompanyVO vo) {

		return mybatis.selectOne("companyMapper.companyLogin", vo);
	}

	// 체크할 아이디 가져와서 mapper로 넘겨주기위해 Map사용
	@Override
	public int idCheck(String id) {
		Map<String, Object> parms = new HashMap<String, Object>();
		parms.put("id",id);
		return mybatis.selectOne("companyMapper.idCheck",id);
	}
	
	@Override
	public CompanyVO companyconfirmpassword(CompanyVO vo) {
		
		return mybatis.selectOne("companyMapper.companyconfirmpassword",vo);	
		
	}
	
	@Override
	public void companyupdate(CompanyVO vo) {
		
		mybatis.update("companyMapper.companyupdate",vo);
	}
	
	@Override
	public CompanyVO companyFindPassword(CompanyVO vo) {
		
		return mybatis.selectOne("companyMapper.companyFindPassword",vo);
		
	}
	
	@Override
	public int companyTotalDelete(CompanyVO vo) {
		
		mybatis.delete("companyMapper.companyExhibitionDelete",vo);
		
		return mybatis.delete("companyMapper.companyTotalDelete",vo);
	}
}