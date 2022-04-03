<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테스트 메인 페이지</title>
</head>
<body>
	<h1>일반회원</h1>
	<a href="customer/CustomerLogin.do">일반회원 로그인 페이지 -- 컨트롤러 연결완료</a>
	<hr>
	<a href="customer/CustomerSignUp.do">일반회원 회원가입 페이지 -- 테이블에 맞게 인풋태그 수정필요</a>
	<hr>
	<a href="customer/CustomerChangeInfo.do">일반회원 정보수정 페이지 -- 테이블에 맞게 인풋태그 수정필요</a>
	<hr>
	<a href="customer/CustomerWishList.do">일반회원 찜목록</a>
	<hr>
	<a href="customer/CustomerTicket.do">일반회원 예매내역</a>
	<hr>
	<a href="customer/CustomerSignUpSucess.do">회원가입 성공페이지</a>
	<hr>
	<a href="ErrorPage.do">에러페이지</a>
	
	<h1>전시회</h1>
	<!-- 실행흐름 : [1]날짜선택 -> [2]목록 리스트 -> [3]전시회 상세  -->
	<a href="exhibition/ExhibitionDate.do">전시회 날짜선택 페이지</a>
	<hr>
	<a href="exhibition/ExhibitionDateList.do">전시회 목록 리스트 페이지</a>
	<hr>
	<a href="exhibition/ExhibitionDetail.do">전시회 상세 페이지</a>
	<hr>
	<a href="exhibition/ExhibitionReviewList.do">후기 목록(조회전용)</a>
	<hr>
	
	<h1>업체</h1>
	<a href="company/CompanyLogin.do">업체전용 로그인</a>
	<hr>
	<a href="company/CompanySignUp.do">업체전용 회원가입</a>
	<hr>
	
	<h1>메인페이지</h1>
	<a href="NoneMemberMain.do">비회원 메인</a>
	<hr>
	<a href="CustomerMain.do">회원 메인</a>
	<hr>
	<a href="CompanyMain.do">업체 메인</a>
	<hr>
	
	<h1>마스터 페이지</h1>
	<a href="master/MasterPage.do">관리자 페이지</a>
	
	<h1>컨트롤러 테스트 전용</h1>
	<a href="MappingTest.do">맵핑 테스트</a>
	<hr>
	<a href="index.do">컨트롤러 테스트 전용 경로</a>
	<hr>
	
	<form action="/exhibition/ExhibitionTest.do">
	<button type="submit">전시회 1줄 조회</button>
	</form>
	
	<hr>
	<a href="exhibition/ExhibitionReviewWrite.do">전시회 후기 입력</a>
	<hr>
	<a href="exhibition/ExhibitionReviewWriteTest.do">나의 후기 페이지</a>
	<hr>
	<a href="exhibition/ExhibitionReviewWriteTest.do">전체 후기 페이지</a>
	<hr>
	<a href="exhibition/ExhibitionAllTest.do">전시회 전체</a>
	<hr>
	<a href="Payment.do">결제창</a>
	<hr>
	<a href="Payment.do">이미지 업로드</a>
	깃 테스트
	깃 테스트
	깃 테스트

</body>
</html> 


