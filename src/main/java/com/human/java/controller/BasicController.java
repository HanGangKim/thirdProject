package com.human.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BasicController {

	// 단순이동 컨트롤러
	@RequestMapping("/{step}.do")
	public String userJoin(@PathVariable String step) {
		System.out.println(step);
		return step;
	}

}