package com.human.java.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.dao.CustomerDAOImpl;
import com.human.java.domain.CustomerVO;
import com.human.java.domain.ExhibitionVO;
import com.human.java.domain.WishListVO;

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
		System.out.println("CustomeVO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		
		return customerDAO.customerLogin(vo);
	}
	@Override
	public void customerUpdate(CustomerVO vo) {
		
		System.out.println("===============");
		System.out.println("customerupdate 서비스 호출");
		System.out.println("CustomeVO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		
		customerDAO.customerupdate(vo);
		
	}

	@Override
	public List<WishListVO> WishListService(ExhibitionVO vo, String id, WishListVO wl, HttpServletRequest request) {
		// TODO Auto-generated method stub
		System.out.println("-_+_+_+_+_+_+_+_+_+_+_");
		System.out.println("WishListService.do 호출");
		System.out.println("_+_+_+_+_+_+_+_+_+_+_+");
		
		customerDAO.wishListInsert(vo, id, request);
		
		return customerDAO.wishListSearch(wl, id, request);
	}

}
