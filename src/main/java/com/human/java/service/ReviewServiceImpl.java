package com.human.java.service;

import java.util.HashMap;
import java.util.List;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.dao.ReviewDAOImpl;
import com.human.java.domain.ReviewVO;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService{

	@Autowired // 객체를 새로 생성하지말고 자동으로 할당하자
	private ReviewDAOImpl reviewDAO;
	
	@Override
	public void insertReview(ReviewVO vo) {
		System.out.println("===============");
		System.out.println("insertReview 서비스 호출");
		System.out.println("VO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		reviewDAO.insertReview(vo);
		
	}

	@Override
	public void updateReview(ReviewVO vo) {
		System.out.println("===============");
		System.out.println("updateReview 서비스 호출");
		System.out.println("VO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		reviewDAO.updateReview(vo);
		
	}

	@Override
	public void deleteReview(ReviewVO vo) {
		System.out.println("===============");
		System.out.println("deleteReview 서비스 호출");
		System.out.println("VO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		reviewDAO.deleteReview(vo);
		
	}

	@Override
	public ReviewVO getReview(ReviewVO vo) {
		System.out.println("===============");
		System.out.println("getReview 서비스 호출");
		System.out.println("VO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		return reviewDAO.getReview(vo);
	}

	@Override
	public List<ReviewVO> getReviewList(HashMap map) {
		System.out.println("===============");
		System.out.println("getReviewList 서비스 호출");
		System.out.println("VO : " + ToStringBuilder.reflectionToString(map));
		System.out.println("===============");
		return reviewDAO.getReviewList(map);
	}

	
	
	
}
