package com.human.java.exhibition.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

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
			mv.setViewName("redirect:/exhibition/ExhibitionPaySucess.do");

			return mv;

		} else {
			mv.setViewName("redirect:/exhibition/ExhibitionPayFail.do");
			return mv;
		}
	}

	@RequestMapping("ExhibitionTicketingSelect.do")
	public String ticketSelect(Model model, @RequestParam("id") String id) {
		
		HashMap map = new HashMap();
		map.put("id", id);

		List<TicketingSelectVO> li =  exhibitionService.ticketSelect(map, id);
		
		if(li.isEmpty()) {
			String nullCheck = "예매내역이 없습니다.";
			model.addAttribute("nullCheck" , nullCheck);
			return "/Customer/CustomerTicket";
			
		}else {
			model.addAttribute("selectList",li);
			return "/Customer/CustomerTicket";
		}
		

	}

}
