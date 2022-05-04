
package com.human.java.customer.controller;

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

import com.human.java.domain.CustomerVO;
import com.human.java.service.CustomerService;
import com.human.java.service.ExhibitionService;

import oracle.net.aso.e;

@Controller
@RequestMapping("/customer/")
public class CustomerConfirmPasswordController {
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private JavaMailSender mailSender;
	
	
	//비밀번호 확인 메소드
	@RequestMapping("customerConfirmPassword.do")
	public ModelAndView customerconfirm(CustomerVO vo, HttpSession session) {
		System.out.println("CustomerConfirmPasswod 메소드 호출");
		System.out.println("CustomerVO : " + ToStringBuilder.reflectionToString(vo));
		CustomerVO result = customerService.customerLogin(vo);
		ModelAndView mv = new ModelAndView();
		
		if (result==null) {
			System.out.println("패스워드 확인 실패");
			mv.setViewName("/Customer/CustomerConfirmPass");
			return mv;
		}else {
			System.out.println("===============");
			System.out.println("CompanyVO : " + ToStringBuilder.reflectionToString(vo));
			System.out.println("===============");

			System.out.println("[" + result.getCustomer_id() + "]" + "패스워드 확인 성공");
			
			session.setAttribute("userPass" , result.getCustomer_password());
			session.setAttribute("userId", result.getCustomer_id());
		
			
			mv.addObject("vo", customerService.customerconfirmpassword(vo));
			
			mv.setViewName("/Customer/CustomerChangeInfo");
		}
		return mv;
	}
	
	@RequestMapping("customerFindPassword.do")
	public ModelAndView customerFindPass(CustomerVO vo,HttpSession session) {
		System.out.println("customerFindPass 메소드 호출");
		System.out.println("CustomerVO : " + ToStringBuilder.reflectionToString(vo));
		// vo : id email 
		// >> 결과 : password  select 
		CustomerVO result = customerService.customerFindPassword(vo);
		ModelAndView mv = new ModelAndView();
		
		if(result == null) {
			System.out.println("확인실패");
			mv.setViewName("/Customer/CustomerLogin");
			return mv;
			
			
		}else {
			
			try {
						
			System.out.println("===============");
			System.out.println("CustomerVO : " + ToStringBuilder.reflectionToString(vo));
			System.out.println("===============");
			System.out.println("[" + result.getCustomer_id() + "]" + "아이디 확인 성공");
			
			session.setAttribute("findPass" , result.getCustomer_password());
			session.setAttribute("findId", result.getCustomer_id());
			session.setAttribute("findName", result.getCustomer_id());
			session.setAttribute("findEmail", result.getCustomer_email());
			
			mv.addObject("vo",customerService.customerFindPassword(vo));
			
			// 비밀번호 메일전송
			// 조회한 id , password 변수지정
			String sendEmailId=result.getCustomer_id();
			String sendEmailPassword =result.getCustomer_password();
			// 이미지 
			// 웹 이미지 경로 변수지정
			String img = "<img src=\"https://postfiles.pstatic.net/MjAyMjA1MDRfMjcz/MDAxNjUxNjQ2NTg2NDE3.ZK3VHyYKYTaK91p8UNvp49_gOFVLJhr0qGdSoOr41U0g.K0h-bNm1NMOhEN38cRUJ0Vwp6RMRkeCpS6nh1hiBk1og.PNG.hansoo0724/black_logo.png?type=w773\">";
			
			MimeMessage mimeMessage = mailSender.createMimeMessage();
		    MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
 
		    messageHelper.setFrom("Fiennale@gmail.com"); // 보내는사람
		    messageHelper.setTo(result.getCustomer_email()); // 받는사람 이메일
			
		    // 메일제목
		    messageHelper.setSubject("[Fiennale] 피엔날레에서 보내는 메일입니다."); 
		    // 메일 내용
		    messageHelper.setText("<HTML><h1>Fiennale</h1></HTML>"
		    + img
		    + " <HTML><h3> " + sendEmailId + "님의 비밀번호는" + sendEmailPassword + "입니다.</h3>"
		    +" <a href=\"http://fiennale.shop/start/NoneMemberMain.do\" style=\"width: 200px; text-decoration: none; display: inline-block; background-color: #f15b66; padding: 0.5rem 1rem; font-size: 1rem; border-radius: 0.375rem; line-height: 1.5; color: #ffffff; cursor: pointer; text-align: center; vertical-align: middle; font-family: Arial, Helvetica, sans-serif;\">Go Fiennale</a>"+"</HTML>", true); 
			// 메일전송	    
		    mailSender.send(mimeMessage);
			
			mv.setViewName("/Customer/CustomerFindPassword");
			
			} catch (Exception e) {
				// 예외발생 시 비밀번호를 보내지 않고 로그인 페이지로 리턴
				e.printStackTrace();
				System.out.println("에러발생");
				mv.setViewName("/Customer/CustomerLogin");
				return mv;
			}
			
		}
		// 모든 과정이 끝나면 정상적으로 CustomerFindPassword.jsp 로 이동
		return mv;	
	}
	
}
