package com.human.java.company.controller;

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

	@RequestMapping("companyInsert.do")
	public ModelAndView companySignUp(CompanyVO vo) {
		// 가입실패
		int result = companyService.companyInsert(vo);
		ModelAndView mv = new ModelAndView();

		if (result > 0) {
			mv.setViewName("redirect:/company/CompanyLoginWaiting.do");
		} else {
			mv.setViewName("redirect:/company/CompanyErrorPage.do");
		}
		return mv;
	}

}
