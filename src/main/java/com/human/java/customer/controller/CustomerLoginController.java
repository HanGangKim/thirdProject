package com.human.java.customer.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.CustomerVO;
import com.human.java.service.CustomerService;

@Controller
@RequestMapping("/customer/")
public class CustomerLoginController {

	@Autowired
	private CustomerService customerService;

	// 로그인 메소드
	@RequestMapping("customerLogin.do")
	public String customerLogin(CustomerVO vo, HttpSession session) {

		System.out.println("customerLogin 메소드 호출");
		CustomerVO result = customerService.customerLogin(vo);

		if (result == null) {
			System.out.println("로그인 실패");
			return "/Customer/CustomerLogin";
		} else {
			System.out.println("[" + result.getCustomer_id() + "]" + "로그인 성공");
			session.setAttribute("userName", result.getCustomer_name());
			session.setAttribute("userId", result.getCustomer_name());
			session.setAttribute("sessionTime", new Date().toLocaleString());
			return "/Customer/CustomerLoginSucessTest";
		}

	}

}
