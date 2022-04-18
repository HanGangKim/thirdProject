package com.human.java.dao;

import java.util.HashMap;
import java.util.List;

import com.human.java.domain.ReviewVO;


public interface ReviewDAO {
	
	// 리뷰 게시판 CRUD
	// 글 등록
	int insertReview(ReviewVO vo);

	// 글 수정
	void updateReview(ReviewVO vo);

	// 글 삭제
	void deleteReview(HashMap map);
	
//	// 글 목록 조회
//	List<ReviewVO> getReviewList(HashMap map);

	// 글 목록 조회
	List<ReviewVO> getReviewList(HashMap map, int endRow);
	
	// 나의 리뷰 리스트
	List<ReviewVO> getMyReviewList(HashMap map , String id);

	// 나의 리뷰 상세 조회
	ReviewVO getMyReview(ReviewVO vo);


}
