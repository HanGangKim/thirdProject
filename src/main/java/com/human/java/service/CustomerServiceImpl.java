package com.human.java.service;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.dao.CustomerDAOImpl;
import com.human.java.domain.CustomerVO;

@Service("customerService")
public class CustomerServiceImpl implements CustomerService{

	@Autowired 
	private CustomerDAOImpl customerDAO;
	
	@Override
	public int customerInsert(CustomerVO vo) {
		System.out.println("===============");
		System.out.println("customerInsert 서비스 호출");
		System.out.println("VO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		
		return customerDAO.customerInsert(vo);
	}

	@Override
	public CustomerVO customerLogin(CustomerVO vo) {
		System.out.println("===============");
		System.out.println("customerLogin 서비스 호출");
		System.out.println("VO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		
		return customerDAO.customerLogin(vo);
	}

}
