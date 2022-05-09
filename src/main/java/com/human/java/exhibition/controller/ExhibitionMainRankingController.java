package com.human.java.exhibition.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.ExhibitionVO;
import com.human.java.service.ExhibitionService;

@Controller
@RequestMapping("/exhibition/")
public class ExhibitionMainRankingController {

	@Autowired
	private ExhibitionService exhibitionService;

	@RequestMapping({ "NoneMemberMain.do", "CustomerMain.do" })
	public ModelAndView comingExhibition(HttpServletRequest request, ExhibitionVO vo) {

		ModelAndView mv = new ModelAndView();
		if (request.getServletPath().equals("NoneMemberMain.do")) {
			mv.setViewName("NoneMemberMain");
		} else if (request.getServletPath().equals("CustomerMain.do")) {
			mv.setViewName("/Customer/CustomerMain");
		}

		mv.addObject("vo", exhibitionService.comingExhibition(vo));

		return mv;
	}

}
