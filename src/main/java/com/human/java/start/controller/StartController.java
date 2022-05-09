package com.human.java.start.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.ExhibitionVO;
import com.human.java.service.ExhibitionService;

@Controller
public class StartController {
	
	@Autowired
	private ExhibitionService exhibitionService;
	
	
	// 메인 Top 8 조회 컨트롤러
	// 전시회 랜덤 뽑기 컨트롤러
	// 마감임박 전시회 조회 컨트롤러
		@RequestMapping({"NoneMemberMain.do","CustomerMain.do"})
		public ModelAndView comingExhibition(HttpServletRequest request, ExhibitionVO vo) {
			ModelAndView mv = new ModelAndView();
			
			// 결국 가는 방향은 같지만 URL에 따라 목적지 변경도 가능하다... 
			if(request.getServletPath().equals("NoneMemberMain.do")) {
				mv.setViewName("NoneMemberMain");
			}else if(request.getServletPath().equals("CustomerMain.do")) {
				mv.setViewName("NoneMemberMain");
			}

			mv.addObject("voRand", exhibitionService.randomExhibition(vo));
			mv.addObject("vo", exhibitionService.comingExhibition(vo));
			mv.addObject("volast", exhibitionService.lastExhibition(vo));
			mv.addObject("top3" , exhibitionService.top3Exhibition(vo));
			return mv;
		}
		
		
		

}
