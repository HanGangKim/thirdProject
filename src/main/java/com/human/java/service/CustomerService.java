package com.human.java.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.human.java.domain.CustomerVO;
import com.human.java.domain.ExhibitionVO;
import com.human.java.domain.WishListVO;


public interface CustomerService {

	// 회원가입
	public int customerInsert(CustomerVO vo);
	
	// 로그인
	public CustomerVO customerLogin(CustomerVO vo);
	
	//정보수정
	public void customerupdate(CustomerVO vo);
	
	//찜목록
	public List<WishListVO> WishListService(ExhibitionVO vo, String id, WishListVO wl,  HttpServletRequest request);

}
