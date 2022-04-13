package com.human.java.customer.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.ExhibitionVO;
import com.human.java.domain.WishListVO;
import com.human.java.service.CustomerService;

@Controller
@RequestMapping("/customer/")
public class CustomerWishController {
	
	@Autowired
	private CustomerService customerService;
	
	// 단순조회
	@RequestMapping("CustomerWishSelectList.do")
	public ModelAndView SearchWish(ExhibitionVO vo, @RequestParam("id") String id, WishListVO wl, HttpServletRequest request) {
		System.out.println("-_+_+_+_+_+_+_+_+_+_+_");
		System.out.println("CustomerWishList.do 호출");
		System.out.println("_+_+_+_+_+_+_+_+_+_+_+");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Customer/CustomerWishList");
		
		List<WishListVO> li = customerService.WishListSelectService(vo, id, wl, request);
		
		mv.addObject("vo", li);
		
		return mv;
	}
	
	// 입력 + 조회
	@RequestMapping("CustomerWishList.do")
	public ModelAndView addSearchWish(ExhibitionVO vo, @RequestParam("id") String id, WishListVO wl, HttpServletRequest request) {
		
		System.out.println("-_+_+_+_+_+_+_+_+_+_+_");
		System.out.println("CustomerWishList.do 호출");
		System.out.println("_+_+_+_+_+_+_+_+_+_+_+");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Customer/CustomerWishList");

		List<WishListVO> li = customerService.WishListService(vo, id, wl, request);
		
		System.out.println(li.size());
		System.out.println(li.get(0));
		
		
		mv.addObject("vo", li);
		
		return mv;
	}
	

}
