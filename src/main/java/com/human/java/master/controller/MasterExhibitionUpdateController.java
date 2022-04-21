package com.human.java.master.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.java.domain.MasterExhibitionVO;
import com.human.java.service.MasterExhibitionService;

@Controller
@RequestMapping("/master/")
public class MasterExhibitionUpdateController {
	
	@Autowired
	private MasterExhibitionService masterExhibitionService;
	
	@RequestMapping("masterExhibitionUpdate.do")
	public String masterExhibitionUpdate(MasterExhibitionVO vo) {
		System.out.println("update ex-controller 호출");
		
		masterExhibitionService.masterExhibitionUpdate(vo);
		return "redirect:ApproveExhibition.do";
		
	}
}
