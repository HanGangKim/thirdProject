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
	<a href="customer/CustomerLogin.do">일반회원 로그인 페이지 -- 컨트롤러 연결완료</a>
	<br><br>
	<a href="customer/CustomerSignUp.do">일반회원 회원가입 페이지 -- 테이블에 맞게 인풋태그 수정필요</a>
	<br><br>
	<a href="customer/CustomerChangeInfo.do">일반회원 정보수정 페이지 -- 테이블에 맞게 인풋태그 수정필요</a>
	<br><br>
	<a href="customer/CustomerWishList.do">일반회원 찜목록</a>
	<br><br>
	<a href="customer/CustomerTicket.do">일반회원 예매내역</a>
	<br><br>
	<a href="customer/Agreement.do">약관동의 페이지</a>
	<br><br>
	<a href="customer/CustomerSignUpSucess.do">회원가입 성공페이지</a>
	<br><br>
	<a href="customer/CustomerErrorPage.do">회원 에러페이지</a>
	<br><br>
	<a href="">결제 모달 테스트 페이지</a>
	<hr>
	
	<h1>전시회</h1>
	<!-- 실행흐름 : [1]날짜선택 -> [2]목록 리스트 -> [3]전시회 상세  -->
	<a href="exhibition/ExhibitionDate.do">전시회 날짜선택 페이지 (전시회 일정 검색)</a>
	<br><br>
	<a href="exhibition/ExhibitionDateList.do">전시회 목록 리스트 페이지(전시 일정목록)</a>
	<br><br>
	<a href="exhibition/ExhibitionDetail.do">전시회 상세 페이지</a>
	<br><br>
	<a href="exhibition/ExhibitionReviewList.do">후기 목록(조회전용 모든 후기가 다 나옴 로그인여부 상관 없음)</a>
	<hr>
	
	<h1>업체</h1>
	<a href="company/CompanyLogin.do">업체전용 로그인</a>
	<br><br>
	<a href="company/CompanySignUp.do">업체전용 회원가입</a>
	<br><br>
	<a href="">업체등록 게시판</a>
	<br><br>
	<a href="company/CompanyErrorPage.do">에러페이지</a>
	<hr>
	
	<h1>메인페이지</h1>
	<a href="NoneMemberMain.do">비회원 메인</a>
	<br><br>
	<a href="CustomerMain.do">회원 메인</a>
	<br><br>
	<a href="">업체 메인페이지</a>
	<br><br>
	<a href="master/MasterPage.do">관리자 페이지 (업체승인 / 전시회 등록승인 2가지 선택지 있는 화면)</a>
	<br><br>
	<a href="LandingLogin.do">랜딩 로그인 페이지 (일반회원 / 업체회원 등록승인 2가지 선택지 있는 화면)</a>
	<br><br>
	<a href="LandingSignUp.do">랜딩 회원가입 페이지 (일반회원 / 업체회원 등록승인 2가지 선택지 있는 화면)</a>
	<hr>
	
	<h1>마스터 페이지</h1>
	<a href="master/ApproveCompany.do">업체승인 페이지</a>
	<br><br>
	<a href="master/ApproveExhibition.do">전시회 등록승인 페이지</a>
	<hr>
	
	<h1>컨트롤러 테스트 전용</h1>
	<a href="exhibition/ExhibitionAllTest.do">전시회 조회</a>
	<br><br>
	<form action="/ExhibitionTest.do">
	<button type="submit">전시회 1줄 조회</button>
	</form>
	<br><br>
	<a href="exhibition/ExhibitionReviewWrite.do">전시회 후기 입력</a>
	<br><br>
	<a href="exhibition/ExhibitionReviewWrite.do">전시회 후기 입력 테스트 페이지</a>
	<br><br>
	<a href="exhibition/ExhibitionMyReviewList.do">나의 후기 페이지</a>
	<br><br>
	<a href="exhibition/ExhibitionReviewList.do">전시회 전체 후기 페이지</a>
	<br><br>
	<a href="customer/CustomerPaymentForm.do">결제 시스템 테스트(결제 -> 성공 or 실패)</a>
	<br><br>
	<a href="">이미지 업로드 테스트</a>
	<br><br>
	<a href="">QR 코드 테스트</a>
	<hr>
</body>
</html> 


