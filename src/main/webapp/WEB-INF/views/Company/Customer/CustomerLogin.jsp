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
// LogOut.jsp로 이동
// 로그인은 세션이 있으면 못들어가게 Redirect 
response.sendRedirect("../LogOut.do");

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

<title>Customer Sign In</title>


</head>

<body>



	<jsp:include page="/header.jsp" />


	<!--Main content-->
	<main>
		<!--page-hero-->
		<section class="bg-white position-relative">
			<div
				class="bg-pattern text-light w-100 h-100 start-0 top-0 position-absolute"></div>
			<div
				class="container pt-11 pt-lg-14 pb-9 pb-lg-11 position-relative z-index-1">
				<div class="row align-items-center justify-content-center">
					<div class=" col-xl-4 col-lg-5 col-md-6 col-sm-8 z-index-2">

						<h2 class="mb-1 display-6">Customer Sign In</h2>
						<p class="mb-4 text-muted">Please Sign In with details...</p>
						<div class="position-relative">
							<div>
								<form action="/customer/customerLogin.do"
									class="needs-validation" novalidate>
									<div class="input-icon-group mb-3">
										<span class="input-icon"> <i class="bx bx-envelope"></i>
										</span>
										<!-- 아이디 input -->
										<input type="text" name="customer_id" class="form-control"
											required autofocus placeholder="Username">
									</div>
									<div class="input-icon-group mb-3">
										<span class="input-icon"> <i class="bx bx-lock-open"></i>
										</span>
										<!-- 비밀번호 input -->
										<input type="password" name="customer_password"
											class="form-control" required placeholder="Password">
									</div>
									<div class="mb-3 d-flex justify-content-between">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" value=""
												id="flexCheckDefault"> <label
												class="form-check-label" for="flexCheckDefault">
												Remember me </label>
										</div>
										<div>
											<label class="text-end d-block small mb-0"><a
												href="page-account-forget-password.html"
												class="text-muted link-decoration">Forget Password?</a></label>
										</div>
									</div>

									<div class="d-grid">
										<button class="btn btn-primary" type="submit">Sign in
										</button>
									</div>
								</form>

								<!---->
								<p class="pt-4 small text-muted">
									Don’t have an account yet? <a href="CustomerSignUp.do"
										class="ms-2 text-dark fw-semibold link-underline">Sign Up</a>
								</p>
								<!--Divider-->
								<div class="d-flex align-items-center py-3">
									<span class="flex-grow-1 border-bottom pt-1"></span>
									<!-- <span class="d-inline-flex flex-center lh-1 width-2x height-2x rounded-circle bg-white text-mono">or</span> -->
									<span class="flex-grow-1 border-bottom pt-1"></span>
								</div>


							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>


	<jsp:include page="/footer.jsp" />


</body>

<!-- scripts -->
<script src="/resources/js/theme.bundle.js"></script>
<script src="/resources/vendor/node_modules/js/gsap.min.js"></script>
<script src="/resources/vendor/node_modules/js/cursor.js"></script>

</html>