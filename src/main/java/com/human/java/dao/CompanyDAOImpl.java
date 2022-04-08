package com.human.java.dao;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.human.java.domain.CompanyVO;

@Repository("companyDAO")
public class CompanyDAOImpl implements CompanyDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public int companyInsert(CompanyVO vo) {
		System.out.println("===============");
		System.out.println("companyInsert 다오 호출");
		System.out.println("VO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		
		return mybatis.insert("companyMapper.companyInsert",vo);	
	}

	@Override
	public CompanyVO companyLogin(CompanyVO vo) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("companyMapper.companyLogin",vo);
	}
}
