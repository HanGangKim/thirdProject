package com.human.java.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.ExhibitionVO;
import com.human.java.service.ExhibitionService;

@Controller
public class BasicController {

	@Autowired
	private ExhibitionService exhibitionService;
	
	// 단순이동 컨트롤러
	@RequestMapping("/{step}.do")
	public String userJoin(@PathVariable String step) {
		System.out.println(step);
		return step;
	}
	
	@RequestMapping({"NoneMemberMain.do","CustomerMain.do"})
	public ModelAndView comingExhibition(HttpServletRequest request, ExhibitionVO vo) {
		System.out.println("컨트롤커밍익스진입");
		ModelAndView mv = new ModelAndView();
		if(request.getServletPath().equals("NoneMemberMain.do")) {
			mv.setViewName("NoneMemberMain");
		}else if(request.getServletPath().equals("CustomerMain.do")) {
			mv.setViewName("CustomerMain");
		}
		System.out.println(vo + "전달합니다");
		mv.addObject("vo", exhibitionService.comingExhibition(vo));
		
		
		return mv;
	}
	

	/*
	 * @RequestMapping("CustomerMain.do") public ModelAndView
	 * comingExhibition(ExhibitionVO vo) {
	 * 
	 * }
	 */
}