package com.human.java.customer.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.ExhibitionVO;
import com.human.java.domain.WishListVO;
import com.human.java.service.CustomerService;

@Controller
@RequestMapping("/customer/")
public class CustomerController {

	// customer 폴더 단순이동 컨트롤러
	// customer 폴더 내 모든 페이지 이동가능
	@RequestMapping("/{step}.do")
	public String userJoin(@PathVariable String step) {
		return "/Customer/" + step;
	}
	
	
}
