<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테스트 메인 페이지</title>
<style>

a{font-size: large;}

</style>

</head>
<body>
	<h1>일반회원</h1>
	<a href="customer/CustomerLogin.do">일반회원 로그인 페이지 -- 세션이 <b>"없는"</b> 경우에만 진입가능</a>
	<br><br>
	<a href="customer/CustomerSignUp.do">일반회원 회원가입 페이지 -- 세션이 <b>"없는"</b> 경우에만 진입가능</a>
	<br><br>
	<a href="customer/CustomerChangeInfo.do">일반회원 정보수정 페이지 -- 세션이 <b>"있는"</b> 경우에만 진입가능</a>
	<br><br>
	<a href="customer/CustomerWishList.do">일반회원 찜목록 -- 세션이 <b>"있는"</b> 경우에만 진입가능(아직 작업 미진행)</a>
	<br><br>
	<a href="customer/CustomerTicket.do">일반회원 예매내역 -- 세션이 <b>"있는"</b> 경우에만 진입가능</a>
	<br><br>
	<a href="customer/Agreement.do">약관동의 페이지 -- 세션이 <b>"없는"</b> 경우에만 진입가능</a>
	<br><br>
	<a href="customer/CustomerSignUpSucess.do">회원가입 성공페이지 -- 세션이 <b>"없는"</b> 경우에만 진입가능</a>
	<br><br>
	<a href="customer/CustomerErrorPage.do">회원 에러페이지 -- 세션과 상관없이 진입가능</a>
	<br><br>
	<a href="/exhibition/ExhibitionTicketingSelect.do?id=default" >나의 예매내역 -- 세션이 <b>"있는"</b> 경우에만 진입가능 / 후기입력과 이어지는 페이지</a>
	<hr>
	
	<h1>전시회</h1>
	<!-- 실행흐름 : [1]날짜선택 -> [2]목록 리스트 -> [3]전시회 상세 ->  [4]예매 -> [5] 결제 -> [6] 결제성공 -> [7] 예매내역  --> 
	<a href="exhibition/ExhibitionDate.do">전시회 날짜선택 페이지 (전시회 일정 검색 / 검색 - 결제 - 예매내역 연동완료) -- 세션과 상관없이 진입가능</a>
	<br><br>
	<a href="/exhibition/getReviewList.do">후기 목록(조회전용 모든 후기가 다 나옴 로그인여부 상관 없음) -- 세션과 상관없이 진입가능</a>
	<hr>
	
	<h1>업체</h1>
	<a href="company/CompanyLogin.do">업체전용 로그인 -- 세션이 <b>"없는"</b> 경우에만 진입가능</a>
	<br><br>
	<a href="company/CompanySignUp.do">업체전용 회원가입 -- 세션이 <b>"없는"</b> 경우에만 진입가능</a>
	<br><br>
	<a href="">업체등록 게시판 -- 세션이 "있는" 경우에만 진입가능</a>
	<br><br>
	<a href="company/CompanyErrorPage.do">에러페이지 -- 세션과 상관없이 진입가능</a>
	<hr>
	
	<h1>메인페이지</h1>
	<a href="NoneMemberMain.do">비회원 메인 -- 세션과 상관없이 진입가능</a>
	<br><br>
	<a href="CustomerMain.do">회원 메인 -- 세션이 <b>"있는"</b> 경우에만 진입가능</a>
	<br><br>
	<a href="CustomerMain.do">업체 메인페이지 -- 세션이 <b>"있는"</b> 경우에만 진입가능</a>
	<br><br>
	<a href="LandingLogin.do">랜딩 로그인 페이지 (일반회원 / 업체회원 등록승인 2가지 선택지 있는 화면) -- 세션이 <b>"없는"</b> 경우에만 진입가능</a>
	<br><br>
	<a href="LandingSignUp.do">랜딩 회원가입 페이지 (일반회원 / 업체회원 등록승인 2가지 선택지 있는 화면) -- 세션이 <b>"없는"</b> 경우에만 진입가능</a>
	<hr>
	
	<h1>마스터 페이지 -- 세션작업 미진행</h1>
	<a href="master/MasterPage.do">관리자 페이지 (업체승인 / 전시회 등록승인 2가지 선택지 있는 화면)</a>
	<br><br>
	<a href="master/ApproveCompany.do">업체승인 페이지</a>
	<br><br>
	<a href="master/ApproveExhibition.do">전시회 등록승인 페이지</a>
	<hr>
	
	<h1>컨트롤러 테스트 전용</h1>
	<a href="/exhibition/getReviewList.do">리뷰 전체 조회</a>
	<br><br>
	<a href="/exhibition/getMyReviewList.do?id=default">나의 리뷰 리스트 조회</a>
	</body>
</html> 


