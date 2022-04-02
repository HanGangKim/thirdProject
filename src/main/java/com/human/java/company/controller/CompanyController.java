package com.human.java.company.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.human.java.domain.CompanyVO;

@Controller
@RequestMapping("/company/")
public class CompanyController {

	// company 폴더 단순이동 컨트롤러
	// company 폴더 내 모든 페이지 이동가능
	@RequestMapping("/{step}.do")
	public String userJoin(@PathVariable String step) {
		System.out.println(step);
		return "/Company/" + step;
	}

}
