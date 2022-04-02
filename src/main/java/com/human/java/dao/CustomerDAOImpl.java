package com.human.java.dao;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.human.java.domain.CustomerVO;

@Repository("customerDAO")
public class CustomerDAOImpl implements  CustomerDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public int customerInsert(CustomerVO vo) {
		System.out.println("===============");
		System.out.println("customerInsert 다오 호출");
		System.out.println("VO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		
		return mybatis.insert("customerMapper.customerInsert",vo);	
	}

	@Override
	public CustomerVO customerLogin(CustomerVO vo) {
		System.out.println("===============");
		System.out.println("customerLogin 다오 호출");
		System.out.println("VO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		
		return mybatis.selectOne("customerMapper.customerLogin",vo);
	}
	
	
}
