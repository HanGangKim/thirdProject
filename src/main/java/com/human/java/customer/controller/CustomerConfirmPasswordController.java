
package com.human.java.customer.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.CustomerVO;
import com.human.java.service.CustomerService;
import com.human.java.service.ExhibitionService;

@Controller
@RequestMapping("/customer/")
public class CustomerConfirmPasswordController {
	@Autowired
	private CustomerService customerService;
	
	
	//비밀번호 확인 메소드
	@RequestMapping("customerConfirmPassword.do")
	public ModelAndView customerconfirm(CustomerVO vo, HttpSession session) {
		System.out.println("CustomerConfirmPasswod 메소드 호출");
		System.out.println("CustomerVO : " + ToStringBuilder.reflectionToString(vo));
		CustomerVO result = customerService.customerLogin(vo);
		ModelAndView mv = new ModelAndView();
		
		if (result==null) {
			System.out.println("패스워드 확인 실패");
			mv.setViewName("/Customer/CustomerConfirmPass");
			return mv;
		}else {
			System.out.println("===============");
			System.out.println("CompanyVO : " + ToStringBuilder.reflectionToString(vo));
			System.out.println("===============");

			System.out.println("[" + result.getCustomer_id() + "]" + "패스워드 확인 성공");
			
			session.setAttribute("userPass" , result.getCustomer_password());
			session.setAttribute("userId", result.getCustomer_id());
		
			
			mv.addObject("vo", customerService.customerconfirmpassword(vo));
			
			mv.setViewName("/Customer/CustomerChangeInfo");
		}
		return mv;
	}
	
	@RequestMapping("customerFindPassword.do")
	public ModelAndView customerFindPass(CustomerVO vo,HttpSession session) {
		System.out.println("customerFindPass 메소드 호출");
		System.out.println("CustomerVO : " + ToStringBuilder.reflectionToString(vo));
		// vo : id email 
		// >> 결과 : password  select 
		CustomerVO result = customerService.customerFindPassword(vo);
		ModelAndView mv = new ModelAndView();
		
		if(result == null) {
			System.out.println("확인실패");
			mv.setViewName("/Customer/CustomerLogin");
			return mv;
		}else {
			System.out.println("===============");
			System.out.println("CustomerVO : " + ToStringBuilder.reflectionToString(vo));
			System.out.println("===============");
			
			System.out.println("[" + result.getCustomer_id() + "]" + "아이디 확인 성공");
			
			session.setAttribute("userPass" , result.getCustomer_password());
			session.setAttribute("userId", result.getCustomer_id());
			session.setAttribute("userEmail", result.getCustomer_email());
			
			mv.addObject("vo",customerService.customerFindPassword(vo));
			
			mv.setViewName("/Customer/CustomerFindPassword");
			
		}
		return mv;
	}
}
