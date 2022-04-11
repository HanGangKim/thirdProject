
package com.human.java.customer.controller;

import javax.servlet.http.HttpSession;

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

	@RequestMapping("CustomerUpdateInfo.do")
	public String customerupdate(CustomerVO vo, HttpSession session) {
		System.out.println("CustomerChangeInfo 호출");
		CustomerVO result = customerservice.customerLogin(vo);

		// CustomerVO 확인
		System.out.println("===============");
		System.out.println("CustomerChangeInfo 컨트롤러 진입");
		System.out.println("Customer VO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");

		session.setAttribute("customer_id", result.getCustomer_id());
		
		session.setAttribute("customer_password", result.getCustomer_password());
		 
		session.setAttribute("customer_name", result.getCustomer_name());
		session.setAttribute("customer_ph", result.getCustomer_ph());
		session.setAttribute("customer_age", result.getCustomer_age());
		session.setAttribute("customer_gender", result.getCustomer_gender());
		session.setAttribute("customer_flag", result.getCustomer_flag());
		 

		customerservice.customerUpdate(vo);

		return "redirect:/Customer/CustomerChangeInfo.do?";
	}

}
