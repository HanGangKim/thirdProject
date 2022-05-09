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
		
		return mybatis.insert("customerMapper.customerInsert",vo);	
	}

	@Override
	public CustomerVO customerLogin(CustomerVO vo) {
		
		return mybatis.selectOne("customerMapper.customerLogin",vo);
	}
	
	@Override
	public void customerupdate(CustomerVO vo) {
		
		mybatis.update("customerMapper.customerUpdate",vo);
	}

	@Override
	public void wishListInsert(ExhibitionVO vo, String id, HttpServletRequest request) {
		
		System.out.println("in");
		Map<String, Object> parms = new HashMap<String, Object>();
		parms.put("vo", vo);
		parms.put("id", id);
		String userId = (String)request.getSession().getAttribute("userId");
		parms.put("request", userId);
		
		// merge 교체로 인해 update 수정
		// mybatis.insert("wishlistMapper.wishlistInsert", parms);
		mybatis.update("wishlistMapper.wishlistInsert", parms);
	}

	@Override
	public List<WishListVO> wishListSearch(WishListVO wl, String id, HttpServletRequest request) {
		System.out.println("search");
		Map<String, Object> parms = new HashMap<String, Object>();
		parms.put("wl", wl);
		parms.put("id", id);
		String userId = (String)request.getSession().getAttribute("userId");
		parms.put("request", userId);
		return mybatis.selectList("wishlistMapper.wishlistsearch", parms);
	}
	
	@Override
	public List<WishListVO> wishListSelectSearch(WishListVO wl, String id, HttpServletRequest request) {
		System.out.println("search");
		Map<String, Object> parms = new HashMap<String, Object>();
		parms.put("wl", wl);
		parms.put("id", id);
		String userId = (String)request.getSession().getAttribute("userId");
		parms.put("request", userId);
		return mybatis.selectList("wishlistMapper.wishlistsearch", parms);
	}

	@Override
	public int idCheck( String id) {
		Map<String, Object> parms = new HashMap<String, Object>();
		parms.put("id",id);
		return mybatis.selectOne("customerMapper.idCheck",id);
	}

	@Override
	public CustomerVO customerconfirmpassword(CustomerVO vo) {
		
		return mybatis.selectOne("customerMapper.customerconfirmpassword",vo);	
		
	}
	
	@Override
	public CustomerVO customerFindPassword(CustomerVO vo) {
		
		return mybatis.selectOne("customerMapper.customerFindPassword",vo);
	}
	
	@Override 
	public int customerTotalDelete(CustomerVO vo) {
		
		// 외래키로 인해 삭제 이상이 생기기 때문에 참조되어있는 테이블의 튜플부터 삭제
		mybatis.delete("customerMapper.customerReviewDelete",vo);
		mybatis.delete("customerMapper.customerTicketingDelete",vo);
		mybatis.delete("customerMapper.customerWishListDelete",vo);	
			
		
		return mybatis.delete("customerMapper.customerTotalDelete",vo);
	}

	@Override
	public int WishDelete(ExhibitionVO vo, String id, WishListVO wl, HttpServletRequest request) {
		Map<String, Object> parms = new HashMap<String, Object>();
		parms.put("wl", wl);
		parms.put("id", id);
		parms.put("ex", request.getParameter("ExId"));
		String userId = (String)request.getSession().getAttribute("userId");
		parms.put("request", userId);
		return mybatis.delete("wishlistMapper.wishlistdelete", parms);
	}
	
}