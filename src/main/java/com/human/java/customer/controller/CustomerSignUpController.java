
package com.human.java.customer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.CustomerVO;
import com.human.java.service.CustomerService;

@Controller
@RequestMapping("/customer/")
public class CustomerSignUpController {

	@Autowired
	private CustomerService customerService;

	// 회원가입
	@RequestMapping("customerInsert.do")
	public ModelAndView customerInsert(CustomerVO vo) {

		int result = customerService.customerInsert(vo);
		ModelAndView mv = new ModelAndView();

		if (result > 0) {
			mv.setViewName("redirect:/customer/CustomerSignUpSucess.do");
		} else {
			mv.setViewName("redirect:/customer/CompanyErrorPage.do");
		}
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("checkId.do")
	public int checkId(@RequestParam("userId") String userId, CustomerVO vo) {
		int check = customerService.idCheck(vo,userId);
		if (check==1) {
			return 1;
		} else {
			return 0;
		}
	}

}
