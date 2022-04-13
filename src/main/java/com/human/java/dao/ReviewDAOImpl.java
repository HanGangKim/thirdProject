package com.human.java.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.domain.ReviewVO;

@Repository("reviewDAO")
public class ReviewDAOImpl implements ReviewDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public int insertReview(ReviewVO vo) {
		
		System.out.println("===============");
		System.out.println("insertReview DAO 호출");
		System.out.println("ReviewVO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		
		// 리뷰작성시 티켓팅 플래그 업데이트
		mybatis.update("ticketingMapper.flagChange" , vo);
		
		return mybatis.insert("exhibitionReviewMapper.insertReview", vo);
	}

	@Override
	public void updateReview(ReviewVO vo) {
		
		System.out.println("===============");
		System.out.println("updateReview DAO 호출");
		System.out.println("ReviewVO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		
		mybatis.update("exhibitionReviewMapper.updateReview",vo);
		
	}

	@Override
	public void deleteReview(ReviewVO vo) {
		
		System.out.println("===============");
		System.out.println("deleteReview DAO 호출");
		System.out.println("ReviewVO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		mybatis.delete("exhibitionReviewMapper.deleteReview", vo);
	}

	// 모든 리뷰 리스트
		@Override
		public List<ReviewVO> getReviewList(HashMap map) {
			
			System.out.println("===============");
			System.out.println("getReviewList DAO 호출");
//			System.out.println("DAO : "+map.get("searchCondition"));
//			System.out.println("DAO : "+map.get("searchKeyword"));
			System.out.println("===============");
			
			return mybatis.selectList("exhibitionReviewMapper.getReviewList" , map);
		}

	
	// 나의 리뷰 리스트
	@Override
	public List<ReviewVO> getMyReviewList(HashMap map , String id) {
		
		
		System.out.println("===============");
		System.out.println("getMyReviewList 서비스 호출");
		System.out.println("DAO : " + map.get("id"));
		System.out.println("id:"+id );
		System.out.println("===============");
		
		return mybatis.selectList("exhibitionReviewMapper.getMyReviewList" , map);
	}
	
	// 나의 상세 리뷰
		@Override
		public ReviewVO getMyReview(ReviewVO vo) {
			
			
			System.out.println("===============");
			System.out.println("getMyReview 다오 호출");
			System.out.println("===============");
			
			return mybatis.selectOne("exhibitionReviewMapper.getMyReview" , vo);
		}

	
}
