package com.human.java.company.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.human.java.domain.CompanyVO;
import com.human.java.domain.CustomerVO;
import com.human.java.domain.ExhibitionVO;
import com.human.java.service.CompanyService;
import com.human.java.service.ExhibitionService;

@Controller
@RequestMapping("/company/")
public class CompanyLoginController {

	@Autowired
	private CompanyService companyService;
	
	@Autowired
	private ExhibitionService exhibitionService;
	
	@ResponseBody
	@RequestMapping("checkId.do")
	public int checkId(@RequestParam("userId") String userId, CompanyVO vo) {
		int check = companyService.idCheck(vo,userId);
		if (check==1) {
			return 1;
		} else {
			return 0;
		}
	}

	
	@RequestMapping("companyLogin.do")	
	public ModelAndView companyLogin(CompanyVO vo, ExhibitionVO exvo, HttpSession session) {
		
		// 메소드 확인용 출력문 
		CompanyVO result = companyService.companyLogin(vo);
		ModelAndView mv = new ModelAndView();

		// 로그인 실패
		if (result == null) {
			
			mv.setViewName("/Company/CompanyLoginFail");
			return mv;

		// 로그인 성공
		} else if(result.getCompany_flag().equals("D")){
			
			session.setAttribute("companyId", result.getCompany_id());
			session.setAttribute("companyPass", result.getCompany_password());
			session.setAttribute("companyPh", result.getCompany_ph());
			session.setAttribute("companyName", result.getCompany_name());
			session.setAttribute("companyEmail", result.getCompany_email());
			session.setAttribute("companyRegnum", result.getCompany_regnum());
			session.setAttribute("sessionTime", new Date().toLocaleString());

		
			mv.addObject("vo", exhibitionService.comingExhibition(exvo));
			mv.setViewName("/Company/CompanyMain");
			
			return mv;
		
		// 승인대기 	
		} else if (result.getCompany_flag().equals("W")) {
			
			mv.setViewName("/Company/CompanyLoginWaiting");
			return mv;
			
		// 승인거절
		}else if (result.getCompany_flag().equals("R")) {
			
			mv.setViewName("/Company/CompanyLoginReject");
			return mv;
			
		}else {
			
			mv.setViewName("/Company/CompanyErrorPage");
			return mv;
				
		}
		 
	}
}
