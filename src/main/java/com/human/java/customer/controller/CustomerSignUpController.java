
package com.human.java.customer.controller;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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

		System.out.println("===============");
		System.out.println("customerInsert 컨트롤러 호출");
		System.out.println("VO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");

		// 가입실패
		int result = customerService.customerInsert(vo);
		String message = "가입되지 않았습니다.";

		if (result > 0)
			message = vo.getCustomer_name() + "님 , 가입을 축하드립니다.";
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Customer_Sucess/SignUpSucess");
		mv.addObject("message", message);
		mv.addObject("result", result);
		return mv;

	}

}
