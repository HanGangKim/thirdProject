package com.human.java.master.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.MasterCompanyVO;
import com.human.java.service.MasterCompanyService;

@Controller
@RequestMapping("/master/")
public class MasterCompanyUpdateController {

	@Autowired
	private MasterCompanyService masterCompanyService;
	
	// 관리자페이지 업데이트 기능을 담당
	@RequestMapping("masterCompanyUpdate.do")
	public String masterCompanyUpdate(MasterCompanyVO vo) {
		System.out.println("update controller 호출");
		
		masterCompanyService.masterCompanyUpdate(vo);
		
//		String id = vo.getCompany_id();
		
		// .do = 컨트롤러를 타겠다
		return "redirect:ApproveCompany.do";
	}
}
//}
