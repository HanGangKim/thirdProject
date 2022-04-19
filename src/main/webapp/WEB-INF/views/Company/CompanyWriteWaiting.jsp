<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<!--Box Icons-->
<link rel="stylesheet"
	href="/resources/fonts/boxicons/css/boxicons.min.css">

<!--AOS Animations-->
<link rel="stylesheet" href="/resources/vendor/node_modules/css/aos.css">

<!--Iconsmind Icons-->
<link rel="stylesheet" href="/resources/fonts/iconsmind/iconsmind.css">

<!--Google fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@100..700&family=Source+Serif+Pro:ital,wght@0,300;0,400;0,600;0,700;1,300;1,400&display=swap"
	rel="stylesheet">

<!-- Main CSS -->
<link href="/resources/css/theme.min.css" rel="stylesheet">
<link href="/resources/css/theme-shop.min.css" rel="stylesheet">

<title>Welcome!</title>

</head>

<body>
	<!--Preloader Spinner-->
	<div class="spinner-loader bg-tint-primary">
		<div class="spinner-border text-primary" role="status"></div>
		<span class="small d-block ms-2">Loading...</span>
	</div>

	<jsp:include page="/header.jsp" />

	<!--Main content-->
	<main class="main-content" id="main-content">
		<section class="position-relative">
			<div class="container pt-14 pb-9 pb-lg-11">
				<div class="row pt-lg-7 justify-content-center text-center">
					<div class="col-xl-8">
						<div
							class="width-10x height-10x rounded-circle position-relative bg-success text-white flex-center mb-4">
							<i class="bx bx-check lh-1 display-4 fw-normal"></i>
						</div>
						<h1 class="display-2 mb-3">등록/수정이 완료되었습니다.</h1>
						<p class="mb-5 lead mx-auto">실제 등록/수정까지는 2 ~ 3일정도 소요됩니다.</p>
						<a href="/exhibition/CompanyExhibitionList.do?company_id=<%=userId%>" class="btn btn-outline-primary btn-lg">등록 리스트 보러가기</a>

					</div>
				</div>
			</div>
		</section>
	</main>


	<jsp:include page="/footer.jsp" />


	<!-- begin Back to Top button -->
	<a href="#" class="toTop"> <i class="bx bxs-up-arrow"></i>
	</a>
	
	<!--cursor-->
	<div class="cursor">
		<div class="cursor__inner"></div>
	</div>

</body>

<!-- scripts -->
<script src="/resources/js/theme.bundle.js"></script>
<script src="/resources/vendor/node_modules/js/gsap.min.js"></script>
<script src="/resources/vendor/node_modules/js/cursor.js"></script>

</html>
