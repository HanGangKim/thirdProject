<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<title>HEADER</title>

</head>

<body>

	<!-- 헤더 시작 -->
	<header class="z-index-fixed">
		<nav class="navbar navbar-expand-lg navbar-light bg-white">
			<div class="container position-relative">
				<!-- 로고 -->
				<a class="navbar-brand" href="demo-shop.html"> <img
					src="/resources/img/logo/logo-shop.svg" alt="" class="img-fluid">
				</a>
				<!-- 검색버튼 -->
				<div
					class="d-flex align-items-center navbar-no-collapse-items order-lg-last">
					<!-- style="width: 88px; justify-content: flex-end;" -->
					<div class="nav-item me-3">
						<a href="demo-shop-wishlist.html"
							class="nav-link lh-1 position-relative">Hello :)</a>
						<!-- <a href="demo-shop-wishlist.html" class="nav-link lh-1 position-relative">Welcome !</a> -->
					</div>
					<div class="nav-item me-4 me-lg-0">
						<a href="#" data-bs-target="#modal-search-bar-2"
							data-bs-toggle="modal" class="nav-link lh-1"> <i
							class="bx bx-search fs-4"></i>
						</a>
					</div>
				</div>
				<!-- 메뉴 -->
				<div class="collapse navbar-collapse" id="mainNavbarTheme">
					<ul class="navbar-nav mx-auto">
						<!--홈-->
						<li class="nav-item position-lg-static me-lg-3"><a
							class="nav-link active" href="#" role="button"
							aria-haspopup="false" aria-expanded="false"> Home </a></li>
						<!--전시회-->
						<li class="nav-item position-lg-static me-lg-3"><a
							class="nav-link" href="exhibition/ExhibitionDate.do" role="button" aria-haspopup="true"
							aria-expanded="false"> Exhibition </a></li>
						<!--리뷰-->
						<li class="nav-item position-static me-lg-3"><a
							class="nav-link" href="#" role="button" aria-haspopup="true"
							aria-expanded="false"> Review </a></li>
						<!-- 						회원가입 -->
						<!-- 						<li class="nav-item position-lg-static me-lg-3"><a -->
						<!-- 							class="nav-link" href="#" role="button" aria-haspopup="true" -->
						<!-- 							aria-expanded="false">Sign Up </a></li> -->
						<!-- 						로그인 -->
						<!-- 						<li class="nav-item position-lg-static me-lg-3"><a -->
						<!-- 							class="nav-link" href="#" role="button" aria-haspopup="true" -->
						<!-- 							aria-expanded="false"> Sign In </a></li> -->

						<c:choose>
							<c:when test="${sessionScope.userId == null}">
								<!-- 회원가입 -->
								<li class="nav-item position-lg-static me-lg-3"><a
									class="nav-link" href="/LandingSignUp.do" role="button" aria-haspopup="true"
									aria-expanded="false">Sign Up </a></li>
								<!-- 로그인 -->
								<li class="nav-item position-lg-static me-lg-3"><a
									class="nav-link" href="/LandingLogin.do" role="button"
									aria-haspopup="true" aria-expanded="false"> Sign In </a></li>
							</c:when>
							<c:when test="${sessionScope.userId != null}">
								<!--마이페이지-->
								<li class="nav-item dropdown me-lg-3"><a
									class="nav-link dropdown-toggle" data-bs-auto-close="outside"
									href="#" role="button" data-bs-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false">Mypage </a> <!--마이페이지 드롭다운-->
									<div class="dropdown-menu p-lg-3">
										<div class="dropend">
											<a class="dropdown-item" aria-expanded="false"
												href="CustomerWishList.do">My Wishlist</a>
										</div>
										<div class="dropend">
											<a class="dropdown-item" href="CustomerTicket.do"
												aria-expanded="false">My Ticket</a>
										</div>
										<div class="dropend">
											<a class="dropdown-item" href="CustomerTicket.do"
												aria-expanded="false">My Review</a>
										</div>
										<div class="dropdown-divider"></div>
										<a class="dropdown-item" href="CustomerChangeInfo.do">Setting</a>
									</div></li>
								<!--로그아웃-->
								<li class="nav-item"><a class="nav-link" href="#"> Sign
										Out </a></li>
							</c:when>
						</c:choose>


					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- 헤더 끝 -->

	<!-- 검색버튼 모달 시작 -->
	<div id="modal-search-bar-2" class="modal fade" tabindex="-1"
		aria-labelledby="modal-search-bar-2" aria-hidden="true">
		<div class="modal-dialog modal-dialog-top modal-md">
			<div class="modal-content position-relative border-0">
				<div class="position-relative px-4">
					<div
						class="position-absolute end-0 width-7x top-0 d-flex me-4 align-items-center h-100 justify-content-center">
						<button type="button" class="btn-close w-auto small"
							data-bs-dismiss="modal" aria-label="Close">Cancel</button>
					</div>
					<form class="mb-0">
						<div class="d-flex align-items-center">
							<div class="d-flex flex-grow-1 align-items-center">
								<i class="bx bx-search fs-4"></i> <input type="text"
									placeholder="Search...."
									class="form-control shadow-none border-0 flex-grow-1 form-control-lg">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- 검색버튼 모달 끝 -->

</body>

<!-- 검색버튼 모달 스크립트 -->
<script src="/resources/js/theme.bundle.js"></script>
<script src="/resources/vendor/node_modules/js/gsap.min.js"></script>

</html>