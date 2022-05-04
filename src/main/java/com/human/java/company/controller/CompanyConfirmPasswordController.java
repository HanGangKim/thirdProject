
package com.human.java.company.controller;

import java.util.Date;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.CompanyVO;
import com.human.java.domain.CustomerVO;
import com.human.java.service.CompanyService;
import com.human.java.service.CustomerService;
import com.human.java.service.ExhibitionService;

@Controller
@RequestMapping("/company/")
public class CompanyConfirmPasswordController {
	@Autowired
	private CompanyService companyService;
	
	@Autowired
	private JavaMailSender mailSender;
	
	//비밀번호 확인 메소드
	
	@RequestMapping("companyConfirmPassword.do")
	public ModelAndView companyconfirmpassword(CompanyVO vo, HttpSession session) {
		System.out.println("CompanyConfirmPassword 메소드 호출");
		System.out.println("CompanyVO : " + ToStringBuilder.reflectionToString(vo));
		CompanyVO result = companyService.companyLogin(vo);
		ModelAndView mv = new ModelAndView();
		
		if (result==null) {
			System.out.println("패스워드 확인 실패");
			mv.setViewName("/Company/CompanyConfirmPass");
			return mv;
		}else {
			System.out.println("===============");
			System.out.println("CompanyVO : " + ToStringBuilder.reflectionToString(vo));
			System.out.println("===============");

			System.out.println("[" + result.getCompany_id() + "]" + "패스워드 확인 성공");
			
			session.setAttribute("companyPass" , result.getCompany_password());
			session.setAttribute("companyId", result.getCompany_id());
		
			
			mv.addObject("vo", companyService.companyconfirmpassword(vo));
			
			mv.setViewName("/Company/CompanyChangeInfo");
		}
		return mv;
	}
	
	@RequestMapping("companyFindPassword.do")
	public ModelAndView companyFindPass(CompanyVO vo, HttpSession session) {
		System.out.println("companyFindPass 메소드 호출");
		System.out.println("Company vo : "+ToStringBuilder.reflectionToString(vo));
		CompanyVO result = companyService.companyFindPassword(vo);
		ModelAndView mv = new ModelAndView();
		
		if(result ==null) {
			System.out.println("확인실패");
			mv.setViewName("/Company/CompanyLogin");
			return mv;
		}else {
			try {
				
			
			System.out.println("===============");
			System.out.println("CompanyVO : " + ToStringBuilder.reflectionToString(vo));
			System.out.println("===============");
			
			System.out.println("[" + result.getCompany_id() + "]" + "아이디 확인 성공");
			
			session.setAttribute("companyPass" , result.getCompany_password());
			session.setAttribute("companyId", result.getCompany_id());
			session.setAttribute("companyEmail", result.getCompany_email());
			System.out.println(session);
//			mv.addObject("vo",companyService.companyconfirmpassword(vo));

			mv.addObject(result);
			
			// 업체 비밀번호 메일 전송하기
			// 업체 id, password 변수지정
			String sendEmailId = result.getCompany_id();
			String sendEmailPassword = result.getCompany_password();
			
			//메일에 이미지 띄우기
			String img = "<img src=\"https://postfiles.pstatic.net/MjAyMjA1MDRfMjcz/MDAxNjUxNjQ2NTg2NDE3.ZK3VHyYKYTaK91p8UNvp49_gOFVLJhr0qGdSoOr41U0g.K0h-bNm1NMOhEN38cRUJ0Vwp6RMRkeCpS6nh1hiBk1og.PNG.hansoo0724/black_logo.png?type=w773\">";
			MimeMessage mimeMessage =mailSender.createMimeMessage();
			MimeMessageHelper MessageHelper = new MimeMessageHelper(mimeMessage,true,"UTF-8");
			
			MessageHelper.setFrom("Fiennale@gmail.com"); //발신자
			MessageHelper.setTo(result.getCompany_email()); //수신자 이메일
			
			//메일 제목
			MessageHelper.setSubject("[Fiennale] 피엔날레에서 보내는 이메일 입니다.");
			
			//메일 내용
			MessageHelper.setText("<HTML><h1>Fiennale</h1></HTML>"
				    + img
				    + " <HTML><h3> " + sendEmailId + "님의 비밀번호는 " + sendEmailPassword + " 입니다.</h3>"
				    +" <a href=\"http://fiennale.shop/start/NoneMemberMain.do\" style=\"width: 200px; text-decoration: none; display: inline-block; background-color: #f15b66; padding: 0.5rem 1rem; font-size: 1rem; border-radius: 0.375rem; line-height: 1.5; color: #ffffff; cursor: pointer; text-align: center; vertical-align: middle; font-family: Arial, Helvetica, sans-serif;\">Go Fiennale</a>"+"</HTML>", true); 
			
			//메일 전송
			mailSender.send(mimeMessage);
			
			
			
			mv.setViewName("/Company/CompanyFindPassword");
			}catch(Exception e) {
				
			// 예외발생 시 비밀번호를 보내지 않고 로그인 페이지로 리턴
				e.printStackTrace();
				System.out.println("에러발생");
				mv.setViewName("Company/CompanyLogin");
				return mv;
				
				
				
			}
		}
		return mv;
	}
}
