package com.human.java.master.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.MasterExhibitionVO;
import com.human.java.service.MasterExhibitionService;

@Controller
@RequestMapping("/master/")
public class MasterExhibitionSelectController {
	
	@Autowired
	private MasterExhibitionService masterExhibitionService;
	

	@RequestMapping("ApproveExhibition.do")
	public ModelAndView ApproveExhibition() {
		
		System.out.println("전시회등록페이지호출");
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/Master/ApproveExhibition");
		mv.addObject("vo", masterExhibitionService.masterExhibition());
		
		System.out.println("controller");
		
		
		return mv;
	}
	

}
