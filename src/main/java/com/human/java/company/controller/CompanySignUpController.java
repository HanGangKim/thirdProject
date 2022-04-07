package com.human.java.company.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.java.domain.CompanyVO;

@Controller
@RequestMapping("/company/")
public class CompanySignUpController {
	
@RequestMapping("companySignup.do")	
 public String companySignUp(CompanyVO vo) {
	System.out.println("companySignUp.do 호출");
	
	return "/Company/CompanySignUp";
	 
 }

}
