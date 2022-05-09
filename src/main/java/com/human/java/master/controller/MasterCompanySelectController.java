package com.human.java.master.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.MasterCompanyVO;
import com.human.java.service.MasterCompanyService;

@Controller
@RequestMapping("/master/")
public class MasterCompanySelectController {
	
	@Autowired
	private MasterCompanyService masterCompanyService;
	

	// master 폴더 단순이동 컨트롤러
		// master 폴더 내 모든 페이지 이동가능
		@RequestMapping("/{step}.do") // 자스에서 쓴 주소
		public String userJoin(@PathVariable String step) {
			return "/Master/" + step; // 불러들일 페이지 //.jsp 파일명 
		}
		

	
	@RequestMapping("ApproveCompany.do")
	public ModelAndView ApproveCompany() {
		// 데이터베이스에서 우리가 원하는 정보를 가지고와서 다음페이지에게 전달
		// 가져갈 데이터가 없으면 괄호를 빈칸으로!!!
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/Master/ApproveCompany");
		mv.addObject("vo", masterCompanyService.masterCompany());
		
		return mv;
	}
	// js 에서 컨트롤러로 이동
	// 컨트롤러에서 서비스 다오 디비로 이동
	// 디비에 승인했다는 표시를 해야함
	// 전시회 정보가 들어있는 테이블 있는데 그 테이블에 승인, 거절 과 같은 내용이 표시되어있는데 
	// 그것을 우리는 승인으로 바꿔야합니다.
	
	// 
	@ResponseBody
	@RequestMapping("masterCompanySearchTitle.do")
	public List<MasterCompanyVO> masterCompanySearchTitle (MasterCompanyVO vo){
		String title = vo.getCompany_name();  
	
		List<MasterCompanyVO> masterList = masterCompanyService.masterCompanySearchTitle(vo,title);
		
		return masterList;
	}
	
	
	@ResponseBody
	@RequestMapping("masterCompanySearchTitleR.do")
	public List<MasterCompanyVO> masterCompanySearchTitleR (MasterCompanyVO vo){
		String title = vo.getCompany_name();  
	
		List<MasterCompanyVO> masterList = masterCompanyService.masterCompanySearchTitleR(vo,title);
		
		return masterList;
	}

}

