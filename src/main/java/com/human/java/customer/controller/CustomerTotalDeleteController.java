package com.human.java.customer.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.CustomerVO;
import com.human.java.service.CustomerService;
import com.human.java.service.ExhibitionService;
import com.human.java.service.ReviewService;

@Controller
@RequestMapping("/customer/")
public class CustomerTotalDeleteController {
	
	@Autowired
	private CustomerService customerService;

	@Autowired
	private ReviewService reviewServiece;
	
	@Autowired
	private ExhibitionService exhibitionService;
	

	@RequestMapping("customerTotalDelete.do")
	public ModelAndView customerTotalDelete(CustomerVO vo , HttpSession session) {
		String userId = vo.getCustomer_id();
		
		CustomerVO result = customerService.customerLogin(vo);
		ModelAndView mv = new ModelAndView();
		
		// [1] 아이디와 패스워드가 맞지 않을 경우 
		if(result == null ) {
			System.out.println("회원탈퇴 실패");
			mv.setViewName("redirect:/customer/CustomerConfirmPass.do");
			
		return mv;	
			
		// [2] 아이디와 패스워드가 일치할 경우
		// [2-1] 리뷰 삭제
		// [2-2] 찜목록 삭제 
		// [2-3] 예매내역 삭제 
		// [2-4] 계정삭제
		}else {
			
			customerService.customerTotalDelete(vo);
			mv.addObject("userId" , userId);
			mv.setViewName("redirect:/customer/CustomerGoodbye.do");
			session.invalidate(); // 세션에 있는 값을 전부다 지우기
			System.out.println("회원탈퇴 성공");
			return mv;	
		}
			
	}
	
	
}
