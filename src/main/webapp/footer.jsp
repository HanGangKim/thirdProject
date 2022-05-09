<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%request.setCharacterEncoding("UTF-8");%>
<%
Object userId = session.getAttribute("userId");
Object userName = session.getAttribute("userName");
// 세션 연결
if (session.getAttribute("userId") == null) {
// 세션 연결에 실패하면 null	
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
System.out.println("세션연결 실패:"+userId);
System.out.println("세션연결 실패:"+userName);
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
response.sendRedirect("NoneMemberMain.do");

}else{
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
System.out.println("세션연결 성공:"+userId);
System.out.println("세션연결 성공:"+userName);
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
}
%>  
<!doctype html>
<html lang="en">

<head>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/resources/img/favicon.ico" type="image/ico">

<!--Icons-->
<link href="/resources/fonts/boxicons/css/boxicons.min.css"
	rel="stylesheet">

<!--Google fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@100..700&family=Source+Serif+Pro:ital,wght@0,300;0,400;0,600;0,700;1,300;1,400&display=swap"
	rel="stylesheet">

<!-- Main CSS -->
<link href="/resources/css/theme-shop.min.css" rel="stylesheet">

<title>FOOTER</title>

</head>

<body>

	<!--footer-->
	<footer id="footer" class="overflow-hidden position-relative bg-dark text-white">
		<div class="container col-11 pt-9 pt-lg-11 pb-7 position-relative z-index-1">
			<div class="row mb-7">
				<!-- 로고 -->
				<div class="col-md-4 mb-5 mb-md-0 text-md-center order-md-2">
					<a href="#">
						<img src="/resources/img/logo/white-logo.png" class="width-10x d-block h-auto mx-md-auto" alt="">
					</a>
				</div>
				<!-- 메일 -->
				<div class="col-md-4 order-md-1 mb-3 mb-md-0">
					<a href="mailto:mail@domain.com" class="fs-4 link-hover-underline">fiennale@gmail.com</a>
				</div>
				<!-- 연락처 -->
				<div class="col-md-4 text-md-end order-md-3">
					<a href="mailto:mail@domain.com" class="fs-4 link-hover-underline">+01 123-4567-890</a>
				</div>
			</div>
			<hr class="my-5 my-lg-7">
			<div class="row align-items-center">
				<div class="col-md-8 order-md-last mb-3 mb-md-0">
					<div class="d-flex flex-wrap justify-content-md-end me-n4">
						<!-- 메인 -->
						<a href="/NoneMemberMain.do" class="small text-muted me-4 link-hover-underline my-2 block">Home</a>
						<!-- 전시검색 -->
						<a href="/exhibition/ExhibitionDate.do" class="small text-muted me-4 link-hover-underline my-2 block">Exhibition</a>
						<!-- 리뷰목록 -->
						<a href="/exhibition/getReviewList.do" class="small text-muted me-4 link-hover-underline my-2 block">Review</a>
						<%
						if (session.getAttribute("userId") == null) {
						%>
						<!-- 로그인 전 -->
						<a href="/LandingLogin.do"
							class="small text-muted me-4 link-hover-underline my-2 block">Login</a>
						<%
						} else {
						%>
						<!-- 로그인 후 -->
						<a href="/customer/CustomerConfirmPass.do"
							class="small text-muted me-4 link-hover-underline my-2 block">Setting</a>
						<%
						}
						%>
					</div>
				</div>
				
				<div class="col-md-4 order-md-1 small">
					<span class="d-block my-2 lh-sm text-muted">© Copyright 
						<script>document.write(new Date().getFullYear())</script>. Fiennale
					</span>
				</div>			
			</div>
		</div>
	</footer>
	<!--./footer-->
	
	<!-- :Back to top -->
	<a href="#top"
		class="position-fixed toTop d-none d-sm-flex btn btn-light rounded-circle p-0 flex-center width-4x height-4x z-index-fixed end-0 bottom-0 mb-6 me-6">
		<i class="bx bxs-up-arrow align-middle lh-1"></i>
	</a>
	
	<!--cursor-->
	<div class="cursor">
		<div class="cursor__inner"></div>
	</div>

</body>

<!-- 커서 스크립트 -->
<script src="/resources/vendor/node_modules/js/cursor.js"></script>

</html>