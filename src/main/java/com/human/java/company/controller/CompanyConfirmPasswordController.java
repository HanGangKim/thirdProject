
package com.human.java.company.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.CompanyVO;
import com.human.java.domain.CustomerVO;
import com.human.java.service.CompanyService;
import com.human.java.service.CustomerService;
import com.human.java.service.ExhibitionService;

@Controller
@RequestMapping("/company/")
public class CompanyConfirmPasswordController {
	@Autowired
	private CompanyService companyService;
	
	//비밀번호 확인 메소드
	
	@RequestMapping("companyConfirmPassword.do")
	public ModelAndView companyconfirmpassword(CompanyVO vo, HttpSession session) {
		System.out.println("CompanyConfirmPassword 메소드 호출");
		System.out.println("CompanyVO : " + ToStringBuilder.reflectionToString(vo));
		CompanyVO result = companyService.companyLogin(vo);
		ModelAndView mv = new ModelAndView();
		
		if (result==null) {
			System.out.println("패스워드 확인 실패");
			mv.setViewName("/Company/CompanyConfirmPass");
			return mv;
		}else {
			System.out.println("===============");
			System.out.println("CompanyVO : " + ToStringBuilder.reflectionToString(vo));
			System.out.println("===============");

			System.out.println("[" + result.getCompany_id() + "]" + "패스워드 확인 성공");
			
			session.setAttribute("companyPass" , result.getCompany_password());
			session.setAttribute("companyId", result.getCompany_id());
		
			
			mv.addObject("vo", companyService.companyconfirmpassword(vo));
			
			mv.setViewName("/Company/CompanyChangeInfo");
		}
		return mv;
	}
}
