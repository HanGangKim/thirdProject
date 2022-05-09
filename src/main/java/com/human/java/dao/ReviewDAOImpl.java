package com.human.java.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		
		// 리뷰작성시 티켓팅 플래그 업데이트
		mybatis.update("ticketingMapper.flagChange" , vo);
		
		return mybatis.insert("exhibitionReviewMapper.insertReview", vo);
	}

	@Override
	public void updateReview(ReviewVO vo) {
		
		mybatis.update("exhibitionReviewMapper.updateReview",vo);
		
	}

	@Override
	public void deleteReview(HashMap map) {
		
		mybatis.delete("exhibitionReviewMapper.deleteReview", map);
	}

	@Override
	public List<ReviewVO> getReviewList(HashMap map, int endRow) {
		
		Map<String, Object> parms = new HashMap<String, Object>();
		parms.put("map", map);
		parms.put("searchKeyword", map.get("searchKeyword"));
		parms.put("endRow", endRow+1);
		
		return mybatis.selectList("exhibitionReviewMapper.getReviewList" , parms);
	}

	
	// 나의 리뷰 리스트
	@Override
	public List<ReviewVO> getMyReviewList(HashMap map , String id) {
		
		return mybatis.selectList("exhibitionReviewMapper.getMyReviewList" , map);
	}
	
	// 나의 상세 리뷰
		@Override
		public ReviewVO getMyReview(ReviewVO vo) {
			
			return mybatis.selectOne("exhibitionReviewMapper.getMyReview" , vo);
		}

	
}
