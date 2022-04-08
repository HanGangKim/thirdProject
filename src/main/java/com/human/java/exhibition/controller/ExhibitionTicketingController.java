package com.human.java.exhibition.controller;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.TicketingVO;
import com.human.java.service.ExhibitionService;

@Controller
@RequestMapping("/exhibition/")
public class ExhibitionTicketingController {

	@Autowired
	private ExhibitionService exhibitionService;
	
	@RequestMapping("ExhibitionTicketing.do")
	public ModelAndView ticketInsert(TicketingVO vo) {
		System.out.println("===============");
		System.out.println("ticketing 컨트롤러 호출");
		System.out.println("VO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");

		
		int result = exhibitionService.ticketInsert(vo);
		
		ModelAndView mv = new ModelAndView();
		if (result > 0) {
		
		mv.setViewName("Exhibition/ExhibitionPaySucess");
		System.out.println(result);
		
		return mv;
		
		}else{
			
		return mv;	
		}
	
	}
	
}
