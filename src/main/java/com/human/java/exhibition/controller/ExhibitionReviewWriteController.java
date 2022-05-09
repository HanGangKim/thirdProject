package com.human.java.exhibition.controller;

import java.util.HashMap;
import java.util.List;

import org.apache.commons.lang3.builder.ToStringBuilder;
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
	public String saveReview(ReviewVO vo, Model model) {

		// [1] insert
		reviewService.insertReview(vo);

		// [2] update
		// insertReview Dao에서 해결

		// [3] 셀렉트
		// getMyReviewList 서비스 호출
		String id = vo.getCustomer_id();
		HashMap map = new HashMap();
		map.put("id", id);
		model.addAttribute("myReviewList", reviewService.getMyReviewList(map, id));
		return "/Customer/CustomerExhibitionMyReviewList";
	}

	// 나의 글 삭제
	@RequestMapping("deleteReview.do")
	public String deleteReview(ReviewVO vo, Model model) {

		// [0] vo 변수 선언
		String id = vo.getCustomer_id();
		int review_id = vo.getReview_id();

		// [1] 삭제
		HashMap delete_map = new HashMap();
		delete_map.put("review_id", review_id);
		reviewService.deleteReview(delete_map);

		// [2] 조회
		HashMap map = new HashMap();
		map.put("id", id);
		List<ReviewVO> li = reviewService.getMyReviewList(map, id);
		if (li.isEmpty()) {
			String nullCheck = "작성한 리뷰가 없습니다.";
			model.addAttribute("nullCheck", nullCheck);
		} else {
			model.addAttribute("myReviewList", li);
		}
		return "/Customer/CustomerExhibitionMyReviewList";
	}

	// 나의 글 수정
	@RequestMapping("updateReview.do")
	public String updateReview(ReviewVO vo, Model model) {

		// [1] 수정
		reviewService.updateReview(vo);

		// [2] 셀렉트
		// getMyReviewList 서비스 호출
		String id = vo.getCustomer_id();
		HashMap map = new HashMap();
		map.put("id", id);
		model.addAttribute("myReviewList", reviewService.getMyReviewList(map, id));
		return "/Customer/CustomerExhibitionMyReviewList";
	}

}
