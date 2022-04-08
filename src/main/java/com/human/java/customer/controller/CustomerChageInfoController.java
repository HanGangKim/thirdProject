package com.human.java.customer.controller;

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
		customerservice.customerupdate(vo);
		System.out.println("CustomerChangeInfo 컨트롤러 진입");
		return "redirect:/Customer/CustomerChangeInfo.do?";
	}
	

}
