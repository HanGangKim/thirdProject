package com.human.java.master.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.java.master.service.MasterCompanyService;
import com.human.java.service.CompanyService;



@Controller
@RequestMapping("/master/")
public class MasterCompanySelectController {
	
	@Autowired
	private MasterCompanyService masterCompanyService;
	
	// master 폴더 단순이동 컨트롤러
	// master 폴더 내 모든 페이지 이동가능
	@RequestMapping("/{step}.do") // 자스에서 쓴 주소
	public String userJoin(@PathVariable String step) {
		System.out.println(step);
		return "/Master/" + step; // 불러들일 페이지 //.jsp 파일명 
	}
	
	@RequestMapping("ApproveCompany.do")
	public String ApproveCompany() {
		
		System.out.println("업체승인페이지호출");
		// 데이터베이스에서 우리가 원하는 정보를 가지고와서 다음페이지에게 전달
		return "/Master/ApproveCompany";
	}
	// js 에서 컨트롤러로 이동
	// 컨트롤러에서 서비스 다오 디비로 이동
	// 디비에 승인했다는 표시를 해야함
	// 전시회 정보가 들어있는 테이블 있는데 그 테이블에 승인, 거절 과 같은 내용이 표시되어있는데 
	// 그것을 우리는 승인으로 바꿔야합니다. 

}

