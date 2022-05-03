package com.human.java.master.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.MasterExhibitionVO;
import com.human.java.service.MasterCompanyService;
import com.human.java.service.MasterExhibitionService;

@Controller
@RequestMapping("/master/")
public class MasterExhibitionSelectController {

	@Autowired
	private MasterExhibitionService masterExhibitionService;
	
	@Autowired
	private MasterCompanyService masterCompanyService;

	@RequestMapping("ApproveExhibition.do")
	public ModelAndView ApproveExhibition() {

		ModelAndView mv = new ModelAndView();

		mv.setViewName("/Master/ApproveExhibition");
		mv.addObject("vo", masterExhibitionService.masterExhibition());

		return mv;
	}

	@RequestMapping("CheckDnR.do")
	public ModelAndView CheckDnR() {
		System.out.println("CheckDnR 컨트롤러 호출");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/Master/CheckDnR");
		mv.addObject("exvo", masterExhibitionService.masterExhibitionDR());
		mv.addObject("covo", masterCompanyService.masterCompanyDR());

		return mv;
	}

}
