
package com.human.java.customer.controller;

import java.security.Provider.Service;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

		 //[1] 업데이트
		 customerservice.customerUpdate(vo);
		
		// id 만 가지고 조회하는 문장
		vo.setCustomer_id(String.valueOf(session.getAttribute("userId")));
		vo.setCustomer_password(String.valueOf(session.getAttribute("userPass")));

	
		// [2] 로그인
		CustomerVO result = customerservice.customerLogin(vo);
	
		session.setAttribute("userId", result.getCustomer_id());
		session.setAttribute("userPass", result.getCustomer_password());
		session.setAttribute("userName", result.getCustomer_name());
		session.setAttribute("userPh", result.getCustomer_ph());
		session.setAttribute("userAge", result.getCustomer_age());
		session.setAttribute("userGender", result.getCustomer_gender());
		
		

		return "/Customer/CustomerChangeInfo";
	}

}
