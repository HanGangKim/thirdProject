package com.human.java.company.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.CompanyVO;
import com.human.java.service.CompanyService;
import com.human.java.service.ExhibitionService;

@Controller
@RequestMapping("/company/")
public class CompanyTotalDeleteController {
	@Autowired
	CompanyService companyService;
	@Autowired
	ExhibitionService exhibitionService;
	
	@RequestMapping("CompanyTotalDelete.do")
	public ModelAndView companyTotalDelete(CompanyVO vo, HttpSession session) {
		String companyId = vo.getCompany_id();
		System.out.println("=================");
		
		System.out.println(vo.getCompany_id());
		System.out.println(vo.getCompany_password());
		
		System.out.println(session.getAttribute("companyId"));
		System.out.println("=================");
		
		CompanyVO result = companyService.companyLogin(vo);
		ModelAndView mv = new ModelAndView();
		
		//[1] 아이디, 패스워드 불일치
		if(result ==null) {
			System.out.println("탈퇴실패");
			mv.setViewName("Company/CompanyErrorPage");
			
			return mv;
		}else {
			companyService.companyTotalDelete(vo);
			mv.addObject("companyId",companyId);
			mv.setViewName("Company/CompanyGoodbye");
			session.invalidate();
			System.out.println("회원탈퇴 성공");
			return mv;
		}
		
	}

}
