package com.human.java.exhibition.controller;

import java.util.HashMap;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	@RequestMapping("getMyReviewList.do")
	public String getMyReviewList(Model model , @RequestParam("id") String id) {
		
		System.out.println("===============");
		System.out.println("getReview.do 호출");
		System.out.println("===============");
		
		HashMap map = new HashMap();
		map.put("id", id);
		
		ReviewVO vo = new ReviewVO();
		
		model.addAttribute("myReviewList", reviewService.getMyReviewList(map , id));
		return "/Customer/CustomerExhibitionMyReviewList";
	}
	
	// 나의 리뷰 상세조회 
	@RequestMapping("getMyReview.do")
	public String getMyReview(Model model , @RequestParam("reviewId") String reviewId) {
		
		System.out.println("===============");
		System.out.println("getMyReview.do 호출");
		System.out.println("===============");
		
		HashMap map = new HashMap();
		map.put("reviewId", reviewId);
		
		ReviewVO vo = new ReviewVO();
		
		model.addAttribute("myReview", reviewService.getMyReview(map , reviewId));
		return "/Customer/CustomerExhibitionReviewWriteUpdate";
	}

}
