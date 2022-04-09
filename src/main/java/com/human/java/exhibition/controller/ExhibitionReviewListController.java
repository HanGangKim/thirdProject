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

	@RequestMapping("getReviewList.do")
	public String getReviewList(Model model, String searchCondition, String searchKeyword) {
		// Model : 데이터를 전달할 수 있는 객체
		// 검색 : form 태그의 searchCondition , searchKeyword 를 가져오기

		System.out.println("=====컨트롤진입=====");
		System.out.println("조건 : " + searchCondition);
		System.out.println("검색어 : " + searchKeyword);

		HashMap map = new HashMap();
		map.put("searchCondition", searchCondition);
		map.put("searchKeyword", searchKeyword);
		ReviewVO vo = new ReviewVO();
		// DB 접속해서 데이터 가져오기
		model.addAttribute("ReviewList", reviewService.getReviewList(map));
		return "/Exhibition/ExhibitionReviewListTest";
	}

	// 글 상세조회
	@RequestMapping("getReview.do")
	public void getReview(ReviewVO vo, Model model) {
		
		System.out.println("===============");
		System.out.println("getReview.do 호출");
		System.out.println("===============");
		
		model.addAttribute("review", reviewService.getReview(vo));
	}

}
