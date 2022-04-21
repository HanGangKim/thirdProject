package com.human.java.exhibition.controller;

import java.util.List;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.ExhibitionVO;
import com.human.java.service.ExhibitionService;

@Controller
@RequestMapping("/exhibition/")
public class ExhibitionDateController {

	@Autowired
	private ExhibitionService exhibitionService;

	@RequestMapping("ExSearch.do")
	public ModelAndView exhibitionSearch(ExhibitionVO vo, @RequestParam("totalDate") String totalDate) {

		
		System.out.println("===============");
		System.out.println("ExSearchTest.do 호출");
		System.out.println("===============");

		ModelAndView mv = new ModelAndView();
		System.out.println(totalDate);

		mv.setViewName("/Exhibition/ExhibitionDateList");
		System.out.println(ToStringBuilder.reflectionToString(vo) + "전달");
		mv.addObject("vo", exhibitionService.exhibitionSearch(vo, totalDate, 8));
		System.out.println(ToStringBuilder.reflectionToString(vo) + "전달");

		return mv;
	}
	
	@ResponseBody
	@RequestMapping("ExSearchAjax.do")
	public Object exSearchTestAjax(@RequestParam("endRow") String endRow, @RequestParam("totalDate") String totalDate) {
		
		
		System.out.println(endRow);
		System.out.println("ajax Test....");
		ExhibitionVO vo = null;
		
	    List<ExhibitionVO> list = exhibitionService.exhibitionSearch(vo, totalDate, Integer.parseInt(endRow) );
	    
	    System.out.println(list.size());
	    System.out.println("ajax Test....2");
	    
	    return list;
		
	}
	
	@RequestMapping("ExSearchTitle.do")
	public ModelAndView exSearchTitle (ExhibitionVO vo) {
		String title =  vo.getExhibition_title();
		
		System.out.println("===============");
		System.out.println("ExSearchTitle 호출");
		System.out.println("전시회명:" + title);
		System.out.println("===============");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/Exhibition/ExhibitionDateList");
		mv.addObject("vo", exhibitionService.exhibitionSearchTitle(vo, title));
		System.out.println(ToStringBuilder.reflectionToString(vo) + "전달");

	
		return mv;
	}

	@RequestMapping("ExhibitionDetail.do")
	public ModelAndView exhibitionDetail(ExhibitionVO vo, @RequestParam("id") String id) {

		System.out.println("===============");
		System.out.println("ExhibitionDetail.do 호출");
		System.out.println("===============");

		ModelAndView mv = new ModelAndView();
		System.out.println(id);

		mv.setViewName("/Exhibition/ExhibitionDetail");

		System.out.println(ToStringBuilder.reflectionToString(vo) + "전달합니다");

		mv.addObject("vo", exhibitionService.exhibitionDetail(vo, id));

		return mv;
	}

}
