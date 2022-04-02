package com.human.java.exhibition.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.ExhibitionVO;
import com.human.java.service.ExhibitionService;

@Controller
@RequestMapping("/exhibition/")
public class ExhibitionDateController {

	@Autowired
	private ExhibitionService exhibitionService;
	
	@RequestMapping("ExhibitionTest.do")
	public ModelAndView exhibitionInfo(ExhibitionVO vo) {
		System.out.println("컨트롤진입여기?");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/Exhibition/ExhibitionTest");
		mv.addObject("vo", exhibitionService.exhibitionList(vo));
		
		
		return mv;
	}
	
	@RequestMapping("ExhibitionAllTest.do")
	public ModelAndView exhibitionInfoAll(ExhibitionVO vo) {
		System.out.println("컨트롤올진입2");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/Exhibition/ExhibitionAllTest");
		System.out.println(vo + "전달합니다");
		mv.addObject("vo", exhibitionService.exhibitionAll(vo));
		
		
		return mv;
	}
	

}
