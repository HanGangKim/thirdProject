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
	public void insertReview(ReviewVO vo) {
		System.out.println("===============");
		System.out.println("insertReview DAO 호출");
		System.out.println("VO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		mybatis.insert("exhibitionReviewMapper.insertReview", vo);
	}

	@Override
	public void updateReview(ReviewVO vo) {
		System.out.println("===============");
		System.out.println("updateReview DAO 호출");
		System.out.println("VO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		mybatis.update("exhibitionReviewMapper.updateReview",vo);
		
	}

	@Override
	public void deleteReview(ReviewVO vo) {
		System.out.println("===============");
		System.out.println("deleteReview DAO 호출");
		System.out.println("VO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		mybatis.delete("exhibitionReviewMapper.deleteReview", vo);
	}

	@Override
	public ReviewVO getReview(ReviewVO vo) {
		System.out.println("===============");
		System.out.println("getReview DAO 호출");
		System.out.println("VO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		mybatis.selectOne("exhibitionReviewMapper.getReview", vo);
		return null;
	}

	@Override
	public List<ReviewVO> getReviewList(HashMap map) {
		System.out.println("getReviewList DAO 호출");
		System.out.println("DAO : "+map.get("searchCondition"));
		System.out.println("DAO : "+map.get("searchKeyword"));
		return mybatis.selectList("exhibitionReviewMapper.getReviewList" , map);
	}

}
