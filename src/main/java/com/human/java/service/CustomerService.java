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
	public void customerUpdate(CustomerVO vo);
	
	//찜목록
	public List<WishListVO> WishListService(ExhibitionVO vo, String id, WishListVO wl,  HttpServletRequest request);

	
	//찜목록
	public List<WishListVO> WishListSelectService(ExhibitionVO vo, String id, WishListVO wl,  HttpServletRequest request);
	
	// 아이디 중복체크
	public int idCheck(CustomerVO vo, String id);
	
	//비밀번호 확인
	public CustomerVO customerconfirmpassword(CustomerVO vo);
	
	//비밀번호 찾기
	
	public CustomerVO customerFindPassword(CustomerVO vo);
}
