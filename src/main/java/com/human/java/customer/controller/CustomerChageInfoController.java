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
public class CustomerChageInfoController {
	@Autowired
	CustomerService customerservice;

	@RequestMapping("CustomerChangeInfo.do")
	public String customerupdate(CustomerVO vo) {
		System.out.println("CustomerChangeInfo 호출");

		// CustomerVO 확인
		System.out.println("===============");
		System.out.println("CustomerChangeInfo 컨트롤러 진입");
		System.out.println("CompanyVO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");

		customerservice.customerupdate(vo);

		return "redirect:/Customer/CustomerChangeInfo.do?";
	}

}
