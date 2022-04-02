<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/resources/img/favicon.ico" type="image/ico">
<!--Box Icons-->
<link rel="stylesheet" href="/resources/fonts/boxicons/css/boxicons.min.css">

<!--AOS Animations-->
<link rel="stylesheet" href="/resources/vendor/node_modules/css/aos.css">

<!--Iconsmind Icons-->
<link rel="stylesheet" href="/resources/fonts/iconsmind/iconsmind.css">

<!--Google fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&family=Source+Serif+Pro:ital@0;1&display=swap"
	rel="stylesheet">
<!-- Main CSS -->
<link href="/resources/css/theme.min.css" rel="stylesheet">

<!--Flatpickr-->
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/flatpickr.min.css">


<title>Assan 4</title>
</head>

<body>
	<!--Preloader Spinner-->
	<div class="spinner-loader bg-tint-primary">
		<div class="spinner-border text-primary" role="status"></div>
		<span class="small d-block ms-2">Loading...</span>
	</div>

	<!--Main content-->
	<main>
		<!--page-hero-->
		<section
			class="bg-white position-relative d-flex justify-content-center h-100">
			<div
				class="bg-dark d-none d-md-flex position-fixed end-0 top-0 w-md-50 w-lg-60 h-100">
				<!--Divider shape-->
				<svg
					class="position-absolute start-0 top-0 h-100 text-white z-index-1"
					width="80" height="1096" preserveAspectRatio="none"
					viewBox="0 0 58 1096" fill="none"
					xmlns="http://www.w3.org/2000/svg">
                    <path opacity="0.24" fill-rule="evenodd"
						clip-rule="evenodd"
						d="M58 1096L53.2727 1034.97C48.3636 973.947 38.7273 852.719 39.8182 730.667C41.0909 608.614 53.2727 487.386 52 365.333C50.7273 243.281 36.3636 122.053 29.0909 61.0263L21.8182 2.02656e-06H-1.72853e-06L-1.72853e-06 61.0263C-1.72853e-06 122.053 -1.72853e-06 243.281 -1.72853e-06 365.333C-1.72853e-06 487.386 -1.72853e-06 608.614 -1.72853e-06 730.667C-1.72853e-06 852.719 -1.72853e-06 973.947 -1.72853e-06 1034.97L-1.72853e-06 1096H58Z"
						fill="white" />
                    <path fill-rule="evenodd" clip-rule="evenodd"
						d="M37 1096L33.9843 1034.97C30.8527 973.947 24.7053 852.719 25.4013 730.667C26.2132 608.614 33.9843 487.386 33.1724 365.333C32.3605 243.281 23.1975 122.053 18.558 61.0263L13.9185 2.02656e-06H1.11014e-06L1.11014e-06 61.0263C1.11014e-06 122.053 1.11014e-06 243.281 1.11014e-06 365.333C1.11014e-06 487.386 1.11014e-06 608.614 1.11014e-06 730.667C1.11014e-06 852.719 1.11014e-06 973.947 1.11014e-06 1034.97L1.11014e-06 1096H37Z"
						fill="white" />
                </svg>

				<!--Image-->
				<img src="/resources/img/backgrounds/bg3.jpg" alt="" class="bg-image">
			</div>
			<div class="container z-index-2 position-relative">
				<div class="row align-items-center vh-100">
					<div
						class="col-lg-4 pt-3 pb-4 pb-lg-5 pt-lg-5 me-auto col-md-6 z-index-2">
						<div>
							<!--로고-->
							<a href="demo-shop.html"> <img src="/resources/img/logo/logo.svg"
								alt="" class="width-8x d-block mb-5">
							</a>
							<!--제목-->
							<h2 class="mb-1 display-6">
								<!-- Welcome back! -->
								Search Date
							</h2>
							<!--부제-->
							<p class="mb-4 text-muted">원하는 전시회 기간을 선택해주세요.</p>
							<div>
								<!--기간 넘기는 form 태그-->
								<form class="needs-validation" novalidate
									action="demo-shop-products-full-width.html">
									<div class="row mb-7">
										<!--기간으로 날짜 검색 (우리가 쓸 태그)-->
										<div class="mb-5 mb-md-0 mb-3">
											<!-- <h5 class="mb-4">Range</h5> -->
											<input type="text" value="2022-01-08 to 2022-01-23"
												data-flatpickr='{"mode":"range"}' class="form-control">
										</div>
									</div>

									<!--검색버튼-->
									<div class="d-grid">
										<button class="btn btn-primary" type="submit">Search
										</button>
									</div>
								</form>

								<!--로그인하기 버튼-->
								<!-- <p class="pt-4 mb-0 small text-muted">
                                        Don’t have an account yet? <a href="page-account-signup-alt.html"
                                            class="ms-2 text-dark fw-semibold link-underline">Sign Up</a>
                                    </p> -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>

	<!-- begin Back to Top button -->
	<a href="#" class="toTop"> <i class="bx bxs-up-arrow"></i>
	</a>
	<!-- scripts -->
	<script src="/resources/js/theme.bundle.js"></script>
	<script src="/resources/vendor/node_modules/js/flatpickr.min.js"></script>
	
</body>

</html>
