package com.human.java.exhibition.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.java.domain.ReviewVO;
import com.human.java.service.ReviewService;

@Controller
@RequestMapping("/exhibition/")
// 리뷰 조회 컨트롤러
public class ExhibitionReviewWriteController {

	@Autowired
	private ReviewService reviewService;

	// 나의 글 입력
	@RequestMapping("saveReview.do")
	public String saveReview(ReviewVO vo) {
		// DB에 접속을 해야합니다.
		// 접속을 하면 DB에 insert하는 과정을 추가
		reviewService.insertReview(vo);

		return "/Exhibition/ExhibitionReviewListTest";
	}

	// 나의 글 삭제
	@RequestMapping("deleteReview.do")
	public String deleteReview(ReviewVO vo) {
		reviewService.deleteReview(vo);
		return "/Exhibition/ExhibitionReviewListTest";
	}

	// 나의 글 수정
	@RequestMapping("updateBoard.do")
	public String updateReview(ReviewVO vo) {
		reviewService.updateReview(vo);
		return "redirect:/ExhibitionReviewListTest.do?seq=" + vo.getReview_id();
	}

}
