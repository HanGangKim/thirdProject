package com.human.java.exhibition.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/exhibition/")
public class ExhibitionController {
	
	// exhibition 폴더 단순이동 컨트롤러
	// exhibition 폴더 내 모든 페이지 이동가능
	@RequestMapping("/{step}.do")
	public String userJoin(@PathVariable String step) {
		System.out.println(step);
		return "/Exhibition/" + step;
	}

}
