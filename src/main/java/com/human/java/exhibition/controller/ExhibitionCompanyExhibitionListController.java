package com.human.java.exhibition.controller;

import java.util.HashMap;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.human.java.domain.ExhibitionVO;
import com.human.java.domain.ReviewVO;
import com.human.java.service.ExhibitionService;

@Controller
@RequestMapping("/exhibition/")
public class ExhibitionCompanyExhibitionListController {
	@Autowired
	ExhibitionService exhibitionService;

	// 업체 전시회 전체 리스트
	@RequestMapping("CompanyExhibitionList.do")
	public String exhibitionExhibitionList(ExhibitionVO vo , Model model ) {

		String companyId = vo.getCompany_id();
		System.out.println("company_id:"+companyId);
		
		System.out.println("===============");
		System.out.println("exhibitionCompanyExhibitionList.do 호출");
		System.out.println("===============");
				
		model.addAttribute("CompanyExhibitionList", exhibitionService.getExhibitionCompanyServiceList(vo , companyId));
		
		return "/Company/CompanyExhibitionList";
	}
	
	// 업체 전시회 상세조회
	@RequestMapping("CompanyExhibitionDetail.do")
	public String exhibitionExhibitionDetail(ExhibitionVO vo , Model model ) {
		System.out.println("업체ID:"+vo.getCompany_id());
		System.out.println("전시회ID:"+vo.getExhibition_id());
		
		System.out.println("===============");
		System.out.println("exhibitionCompanyExhibitionDetail.do(상세조회)호출");
		System.out.println("===============");
		
		model.addAttribute("CompanyExhibition", exhibitionService.getExhibitionCompanyServiceDetail(vo));
		
		return "/Company/CompanyExhibitionWriteUpdate";
	}
	

}
