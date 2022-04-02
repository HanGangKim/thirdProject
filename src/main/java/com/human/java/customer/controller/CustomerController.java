package com.human.java.customer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.java.service.CustomerService;

@Controller
@RequestMapping("/customer/")
public class CustomerController {

	@Autowired
	private CustomerService customerService;

	// customer 폴더 단순이동 컨트롤러
	// customer 폴더 내 모든 페이지 이동가능
	@RequestMapping("/{step}.do")
	public String userJoin(@PathVariable String step) {
		System.out.println(step);
		return "/Customer/" + step;
	}
}
