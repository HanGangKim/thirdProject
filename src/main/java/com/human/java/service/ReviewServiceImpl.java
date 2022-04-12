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

	@Autowired // 객체를 새로 생성하지말고 자동으로 할당
	private ReviewDAOImpl reviewDAO;
	
	@Override
	public void insertReview(ReviewVO vo) {
		
		System.out.println("===============");
		System.out.println("insertReview 서비스 호출");
		System.out.println("ReviewVO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		

		reviewDAO.insertReview(vo);
		
	}

	@Override
	public void updateReview(ReviewVO vo) {
		
		System.out.println("===============");
		System.out.println("updateReview 서비스 호출");
		System.out.println("ReviewVO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		
		reviewDAO.updateReview(vo);
		
	}

	@Override
	public void deleteReview(ReviewVO vo) {
		
		System.out.println("===============");
		System.out.println("deleteReview 서비스 호출");
		System.out.println("ReviewVO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		
		reviewDAO.deleteReview(vo);
		
	}

	// 리뷰 전체 조회
	@Override
	public List<ReviewVO> getReviewList(HashMap map) {
		
		System.out.println("===============");
		System.out.println("getReviewList 서비스 호출");
		System.out.println("===============");
		
		return reviewDAO.getReviewList(map);
	}

	// 나의 리뷰 상세 리스트
	@Override
	public List<ReviewVO> getMyReviewList(HashMap map , String id) {
		
		System.out.println("===============");
		System.out.println("getMyReviewList 서비스 호출");
		System.out.println("id:"+id );
		System.out.println("===============");
		
		return reviewDAO.getMyReviewList(map , id);
	}

	
	// 나의 상세 리뷰
	@Override
	public ReviewVO getMyReview(ReviewVO vo) {
		
		System.out.println("===============");
		System.out.println("getMyReview 서비스 호출");
		System.out.println("===============");
		
		return reviewDAO.getMyReview(vo);
	}
	
}
