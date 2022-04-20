package com.human.java.exhibition.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.human.java.domain.ExhibitionVO;
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
	public String getReviewList(Model model , String searchKeyword) {
		
		System.out.println("===============");
		System.out.println("getReviewList.do 호출");
		System.out.println("검색어 : "+searchKeyword);
		System.out.println("===============");
			
		HashMap map = new HashMap();
		map.put("searchKeyword", searchKeyword);
		
		ReviewVO vo = new ReviewVO();

		// DB 접속해서 데이터 가져오기
		List<ReviewVO> list = reviewService.getReviewList(map, 8);
		System.out.println(list.size());
		
		model.addAttribute("reviewList", list);
		
		return "/Exhibition/ExhibitionReviewList";
	}
	
	// 모든 사용자의 리뷰 조회 ajax
	@ResponseBody
	@RequestMapping("getReviewListAjax.do")
	public Object getReviewListAjax(Model model, @RequestParam("endRow") String endRow) {
		
		HashMap map = new HashMap();
		ReviewVO vo = new ReviewVO();
		
		List<ReviewVO> list = reviewService.getReviewList(map, Integer.parseInt(endRow));
		
		return list;
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
	public String getMyReview(Model model , ReviewVO vo) {
		
		System.out.println("===============");
		System.out.println("getMyReview.do 호출");
		System.out.println("===============");
		
		model.addAttribute("review", reviewService.getMyReview(vo));	
		
		return "/Customer/CustomerExhibitionReviewWriteUpdate" ; 
	}

}
