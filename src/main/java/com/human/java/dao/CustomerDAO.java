package com.human.java.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.human.java.domain.CustomerVO;
import com.human.java.domain.ExhibitionVO;
import com.human.java.domain.WishListVO;

public interface CustomerDAO {

	public int customerInsert(CustomerVO vo);
	
	public CustomerVO customerLogin(CustomerVO vo);
	
	public void customerupdate(CustomerVO vo);
	
	public void wishListInsert(ExhibitionVO vo, String id, HttpServletRequest request);
	
	public List<WishListVO> wishListSearch(WishListVO wl, String id, HttpServletRequest request);
	
	public List<WishListVO> wishListSelectSearch(WishListVO wl, String id, HttpServletRequest request);
	
	public int idCheck( String id);
	
	public CustomerVO customerconfirmpassword(CustomerVO vo);
	
	public CustomerVO customerFindPassword(CustomerVO vo);
	
}
