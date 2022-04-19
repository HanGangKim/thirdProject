package com.human.java.exhibition.controller;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.java.domain.CompanyVO;
import com.human.java.domain.ExhibitionVO;
import com.human.java.service.CompanyService;
import com.human.java.service.ExhibitionService;

@Controller
@RequestMapping("/exhibition/")
public class ExhibitionCompanyExhibitionWriteController {
	
	@Autowired
	ExhibitionService exhibitionService;

	// 업체 전시회 등록
	@RequestMapping("exhibitionCompanyExhibitionWrite.do")
	public String exhibitionCompanyExhibitionWrite(ExhibitionVO vo) {
		
		System.out.println("===============");
		System.out.println("exhibitionCompanyExhibitionWrite.do 호출");
		System.out.println("ExhibitionVO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		
		exhibitionService.companyInsertExhibition(vo);

		return "/Company/CompanyWriteWaiting";
	}
	
}
