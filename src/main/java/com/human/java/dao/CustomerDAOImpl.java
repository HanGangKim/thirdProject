package com.human.java.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.human.java.domain.CustomerVO;
import com.human.java.domain.ExhibitionVO;
import com.human.java.domain.WishListVO;

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
		System.out.println("CustomerVO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		
		return mybatis.selectOne("customerMapper.customerLogin",vo);
	}
	
	@Override
	public void customerupdate(CustomerVO vo) {
		System.out.println("===============");
		System.out.println("customerupdate 다오 호출");
		System.out.println("CustomerVO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		
		mybatis.update("customerMapper.customerchangeInfo",vo);
	}

	@Override
	public void wishListInsert(ExhibitionVO vo, String id, HttpServletRequest request) {
		// TODO Auto-generated method stub
		System.out.println("in");
		Map<String, Object> parms = new HashMap<String, Object>();
		parms.put("vo", vo);
		parms.put("id", id);
		String userId = (String)request.getSession().getAttribute("userId");
		parms.put("request", userId);
		mybatis.insert("wishlistMapper.wishlistInsert", parms);
	}

	@Override
	public List<WishListVO> wishListSearch(WishListVO wl, String id, HttpServletRequest request) {
		System.out.println("search");
		Map<String, Object> parms = new HashMap<String, Object>();
		parms.put("wl", wl);
		parms.put("id", id);
		String userId = (String)request.getSession().getAttribute("userId");
		parms.put("request", userId);
		System.out.println(userId);
		return mybatis.selectList("wishlistMapper.wishlistsearch", parms);
	}

	
	
	
}