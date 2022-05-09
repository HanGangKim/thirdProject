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
	
	// 회원가입
	@Override
	public int customerInsert(CustomerVO vo) {
		
		return customerDAO.customerInsert(vo);
	}

	// 로그인
	@Override
	public CustomerVO customerLogin(CustomerVO vo) {
		
		return customerDAO.customerLogin(vo);
	}
	
	//정보수정
	@Override
	public void customerUpdate(CustomerVO vo) {
		
		customerDAO.customerupdate(vo);
		
	}

	//찜목록 추가
	@Override
	public List<WishListVO> WishListService(ExhibitionVO vo, String id, WishListVO wl, HttpServletRequest request) {
		
		customerDAO.wishListInsert(vo, id, request);
		
		return customerDAO.wishListSearch(wl, id, request);
	}
	
	//찜목록 조회
	@Override
	public List<WishListVO> WishListSelectService(ExhibitionVO vo, String id, WishListVO wl, HttpServletRequest request) {
		
		return customerDAO.wishListSearch(wl, id, request);
	}

	// 아이디 중복체크
	@Override
	public int idCheck(CustomerVO vo, String id) {
		if(customerDAO.idCheck(id)==0) {
			return 0;
		}else {
		return 1;
		}
	}

	//비밀번호 확인
	@Override
	public CustomerVO customerconfirmpassword(CustomerVO vo) {
		return customerDAO.customerconfirmpassword(vo);
	}
	
	//비밀번호 찾기
	@Override
	public CustomerVO customerFindPassword(CustomerVO vo) {
		return customerDAO.customerFindPassword(vo);
	}

	// 회원내역 삭제 
	@Override
	public int customerTotalDelete(CustomerVO vo) {
		
		return customerDAO.customerTotalDelete(vo);
	}

	// 찜목록 삭제
	@Override
	public int WishDelete(ExhibitionVO vo, String id, WishListVO wl, HttpServletRequest request) {
		return customerDAO.WishDelete(vo, id, wl, request);
	}
	
}
