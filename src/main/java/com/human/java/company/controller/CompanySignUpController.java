package com.human.java.company.controller;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.CompanyVO;
import com.human.java.service.CompanyService;

@Controller
@RequestMapping("/company/")
public class CompanySignUpController {

	@Autowired
	private CompanyService companyService;

	@RequestMapping("companySignup.do")
	public ModelAndView companySignUp(CompanyVO vo) {

		// CompanyVO 확인
		System.out.println("===============");
		System.out.println("companySignUp.do 컨트롤러 호출");
		System.out.println("CompanyVO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");

		// 가입실패
		int result = companyService.companyInsert(vo);
		String message = "가입되지 않았습니다.";

		// 가입성공
		if (result > 0)
			message = vo.getCompany_name() + "님 , 가입을 축하드립니다.";
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Company/CompanyLogin");
		mv.addObject("message", message);
		mv.addObject("result", result);

		return mv;

	}

}
