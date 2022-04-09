package com.human.java.exhibition.controller;

import java.util.HashMap;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.ExhibitionVO;
import com.human.java.domain.ReviewVO;
import com.human.java.domain.TicketingSelectVO;
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
			mv.addObject("customer_id", vo.getCustomer_id());
			System.out.println("예매성공");
			return mv;

		} else {
			mv.setViewName("Exhibition/ExhibitionPayFail");
			System.out.println("예매실패");
			return mv;
		}
	}

	@RequestMapping("ExhibitionTicketingSelect.do")
	public String ticketSelect(Model model, @RequestParam("id") String id) {

		System.out.println("ExhibitionTicketingSelect.do");
		System.out.println("세션 아이디 : " + id);

		HashMap map = new HashMap();
		map.put("id", id);

		TicketingSelectVO vo = new TicketingSelectVO();

		model.addAttribute("selectList", exhibitionService.ticketSelect(map, id));
		return "/Customer/CustomerTicket";

	}

}
