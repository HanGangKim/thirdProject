package com.human.java.exhibition.controller;

import java.util.HashMap;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.human.java.domain.ReviewVO;
import com.human.java.service.ReviewService;

@Controller
@RequestMapping("/exhibition/")
//리뷰 조회 컨트롤러
public class ExhibitionReviewListController {
	@Autowired
	private ReviewService reviewService;

	// 모든 사용자의 리뷰 조회
	@RequestMapping("getReviewList.do")
	public String getReviewList(Model model) {
		
		System.out.println("===============");
		System.out.println("getReview.do 호출");
		System.out.println("===============");
		
		HashMap map = new HashMap();
		ReviewVO vo = new ReviewVO();

		// DB 접속해서 데이터 가져오기
		model.addAttribute("reviewList", reviewService.getReviewList(map));
		return "/Exhibition/ExhibitionReviewList";
	}

	// 나의 리뷰 리스트
	@RequestMapping("getReview.do")
	public void getReview(ReviewVO vo, Model model) {
		
		System.out.println("===============");
		System.out.println("getReview.do 호출");
		System.out.println("===============");
		
		model.addAttribute("review", reviewService.getReview(vo));
	}

}
