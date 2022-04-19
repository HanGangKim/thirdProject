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
		System.out.println("===============");
		System.out.println("companyInsert 다오 호출");
		System.out.println("CompanyVO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");

		return mybatis.insert("companyMapper.companyInsert", vo);
	}

	@Override
	public CompanyVO companyLogin(CompanyVO vo) {
		System.out.println("===============");
		System.out.println("companyLogin 다오 호출");
		System.out.println("CompanyVO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");

		return mybatis.selectOne("companyMapper.companyLogin", vo);
	}

	@Override
	public int idCheck(String id) {
		Map<String, Object> parms = new HashMap<String, Object>();
		parms.put("id",id);
		return mybatis.selectOne("companyMapper.idCheck",id);
	}
	
	@Override
	public CompanyVO companyconfirmpassword(CompanyVO vo) {
		System.out.println("===============");
		System.out.println("companyInsert 다오 호출");
		System.out.println("VO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		
		return mybatis.selectOne("companyMapper.companyconfirmpassword",vo);	
		
	}
}