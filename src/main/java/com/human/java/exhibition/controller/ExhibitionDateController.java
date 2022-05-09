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


		ModelAndView mv = new ModelAndView();

		mv.setViewName("/Exhibition/ExhibitionDateList");
		mv.addObject("vo", exhibitionService.exhibitionSearch(vo, totalDate, 8));

		return mv;
	}
	
	@ResponseBody
	@RequestMapping("ExSearchAjax.do")
	public Object exSearchTestAjax(@RequestParam("endRow") String endRow, @RequestParam("totalDate") String totalDate) {
		
		ExhibitionVO vo = null;
		
	    List<ExhibitionVO> list = exhibitionService.exhibitionSearch(vo, totalDate, Integer.parseInt(endRow) );
	    
	    return list;
		
	}
	
	@RequestMapping("ExSearchTitle.do")
	public ModelAndView exSearchTitle (ExhibitionVO vo) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/Exhibition/ExhibitionDateList");
		mv.addObject("vo", exhibitionService.exhibitionSearchTitle(vo));
	
		return mv;
	}

	@RequestMapping("ExhibitionDetail.do")
	public ModelAndView exhibitionDetail(ExhibitionVO vo, @RequestParam("id") String id) {

		ModelAndView mv = new ModelAndView();

		mv.setViewName("/Exhibition/ExhibitionDetail");

		mv.addObject("vo", exhibitionService.exhibitionDetail(vo, id));

		return mv;
	}

}
