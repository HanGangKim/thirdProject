<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/resources/img/favicon.ico" type="image/ico">

<!--swiper-->
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/swiper-bundle.min.css">
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

<title>Fiennale</title>
</head>

<body>

	<jsp:include page="/main-header.jsp" />

	<main>
	

	
		<!-- 슬라이더 시작 -->
		<section class="position-relative overflow-hidden">
			<!--:Swiper classic -->
			<div class="swiper-container swiper-classic overflow-hidden position-relative vh-100">
				<div class="swiper-wrapper">
					<!--:Slide-->
					<c:forEach items="${voRand}" var="voRand" end="3">
					<div class="swiper-slide" style="background-image: url('${voRand.exhibition_image}'); background-size: width:100%;">
						<div class="bg-dark position-absolute start-0 top-0 w-100 h-100 opacity-50"></div>
						<!--:container-->
						<div class="container h-100 text-white position-relative z-index-1">
							<div class="row d-flex align-items-center h-100">
								<div class="col-xl-10 mx-auto text-center">
									<!--:slider layers-->
									<ul class="carousel-layers list-unstyled mb-0 pt-lg-9">
										<li data-carousel-layer="fade-start">
											<h3 class="display-3 mb-3">${voRand.exhibition_title}</h3>
										</li>
										<li data-carousel-layer="fade-end">
											<p class="lead mb-4 mb-lg-5">${voRand.exhibition_location}</p>
										</li>
										<li data-carousel-layer="fade-start">
											<a href="#" class="btn btn-white btn-lg btn-hover-text mb-2 me-2"> 
												<span class="btn-hover-label label-default">More View</span> 
												<span class="btn-hover-label label-hover">Search Date</span>
											</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					</c:forEach>
					<!--:Slide-->
					<!-- <div class="swiper-slide" style="background-image: url('/resources/img/shop/banners/2.jpeg'); background-size: cover;">
						<div class="bg-dark position-absolute start-0 top-0 w-100 h-100 opacity-50"></div>
						:container
						<div class="container h-100 text-white position-relative z-index-1">
							<div class="row d-flex align-items-center h-100">
								<div class="col-xl-10 mx-auto text-center">
									:slider layers
									<ul class="carousel-layers list-unstyled mb-0 pt-lg-9">
										<li data-carousel-layer="fade-start">
											<h3 class="display-3 mb-3">플라워 바이 네이키드</h3>
										</li>
										<li data-carousel-layer="fade-end">
											<p class="lead mb-4 mb-lg-5">네이처랩스</p>
										</li>
										<li data-carousel-layer="fade-start">
											<a href="#" class="btn btn-white btn-lg btn-hover-text mb-2 me-2"> 
												<span class="btn-hover-label label-default">More View</span> 
												<span class="btn-hover-label label-hover">Search Date</span>
											</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					:Slide
					<div class="swiper-slide" style="background-image: url('/resources/img/shop/banners/3.png'); background-size: cover;">
						<div class="bg-dark position-absolute start-0 top-0 w-100 h-100 opacity-50"></div>
						:container
						<div class="container h-100 text-white position-relative z-index-1">
							<div class="row d-flex align-items-center h-100">
								<div class="col-xl-10 mx-auto text-center">
									:slider layers
									<ul class="carousel-layers list-unstyled mb-0 pt-lg-9">
										<li data-carousel-layer="fade-start">
											<h3 class="display-3 mb-3">빛: 영국 테이트미술관 특별전</h3>
										</li>
										<li data-carousel-layer="fade-end">
											<p class="lead mb-4 mb-lg-5">서울시립 북서울미술관</p>
										</li>
										<li data-carousel-layer="fade-start">
											<a href="#" class="btn btn-white btn-lg btn-hover-text mb-2 me-2"> 
												<span class="btn-hover-label label-default">More View</span> 
												<span class="btn-hover-label label-hover">Search Date</span>
											</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div> -->
				</div>

				<!--:Add Pagination -->
				<div class="swiper-pagination swiperClassic-pagination z-index-1 text-white"></div>
				<!--:Add arrows-->
				<div class="swiper-button-prev swiperClassic-button-prev width-2x height-2x bg-transparent text-white"> </div>
				<div class="swiper-button-next swiperClassic-button-next width-2x height-2x bg-transparent text-white"> </div>
			</div>
		</section>
		<!-- 슬라이더 끝 -->
		
		
		<!-- 카테고리 시작 -->
		<section class="bg-white position-relative overflow-hidden">
			<div class="container pt-7 pt-lg-12 position-relative">
				<div class="row align-items-center">
					<div
						class="col-md-4 border-end-md border-light text-center mb-7 mb-md-0">
						<div class="mb-3">
							<h1><i class="bx bx-calendar"></i></h1>
						</div>
						<h6 class="mb-0">Search</h6>
					</div>
					<div
						class="col-md-4 border-end-md border-light text-center mb-7 mb-md-0">
						<div class="mb-3">
							<h1><i class="bx bx-heart"></i></h1>
						</div>
						<h6 class="mb-0">Select</h6>
					</div>
					<div class="col-md-4 text-center">
						<div class="mb-3">
							<h1><i class="bx bx-credit-card"></i></h1>
						</div>
						<h6 class="mb-0">Success</h6>
					</div>
				</div>
			</div>
		</section>
		<!-- 카테고리 끝 -->
		
		
		<!-- 메뉴선택 두개 시작 -->
		<section class="position-relative bg-white">
			<div class="container-fluid px-lg-4 position-relative pt-7 pt-lg-12">
				<div class="row justify-content-between">
					<div class="col-md-6 mb-3 mb-md-0">
						<div class="card border-0 card-hover overflow-hidden">
							<div class="overflow-hidden position-relative">

								<img src="/resources/img/shop/banners/1.jpeg" class="img-fluid img-zoom" style="width: 100%; height: 500px;">
<!-- 								<div style="border: 10px solid gray; height: 300px; background-color: gray;"></div> -->
								<div class="bg-dark position-absolute start-0 top-0 w-100 h-100 opacity-50"></div>
							</div>
							<div class="position-absolute text-white start-0 top-0 p-4 justify-content-center text-center align-items-center d-flex w-100 h-100">
								<div class="">
									<span>All Exhibition</span>
									<h5 class="mb-4 display-3">Exhibition</h5>
									<a href="/exhibition/ExhibitionDate.do"
										class="btn btn-white btn-lg btn-hover-text mb-2 me-2"> <span
										class="btn-hover-label label-default">Exhibition</span> <span
										class="btn-hover-label label-hover">Search Date</span>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card border-0 card-hover overflow-hidden">
							<div class="overflow-hidden position-relative">

								<img src="/resources/img/shop/banners/2.jpeg" class="img-fluid img-zoom" style="width: 100%; height: 500px;">
<!-- 								<div style="border: 10px solid gray; height: 300px; background-color: gray;"></div> -->
								<div class="bg-dark position-absolute start-0 top-0 w-100 h-100 opacity-50"></div>
							</div>
							<div
								class="position-absolute text-white start-0 top-0 p-4 justify-content-center text-center align-items-center d-flex w-100 h-100">
								<div class="">
									<span>All Review</span>
									<h5 class="mb-4 display-3">Review</h5>
									<a href="/exhibition/getReviewList.do"
										class="btn btn-white btn-lg btn-hover-text mb-2 me-2"> <span
										class="btn-hover-label label-default">Review</span> <span
										class="btn-hover-label label-hover">Review</span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- 메뉴선택 두개 끝 -->

		<section class="overflow-hidden bg-white">
			<div class="container py-9 py-lg-11">
				<div class="row align-items-end">
					<div class="col-md-8 mx-auto text-center">
						<h2 class="mb-5 display-4">Coming Soon</h2>
					</div>
				</div>
				<div class="row">
					<c:forEach items="${vo}" var="vo" end="3">
						<div class="col-md-6 col-lg-3 mb-4">
							<!--Card-product-->
							<div class="card hover-shadow-lg overflow-hidden hover-lift-lg card-product border-0" title="${vo.exhibition_title}">
								<div class="card-product-header px-5 p-4 d-block overflow-hidden">
									<!--Product image-->
									<a href="#!"> <img src="${vo.exhibition_image}" class="img-fluid" alt="Product"> </a>
								</div>
								<div class="card-product-body px-4 pb-4 text-center">
									<a href="#!" class="h6 d-block position-relative mb-2 text-dark text-truncate">${vo.exhibition_title}</a>
									<div class="card-product-body-ovelray">
										<!--Price-->
										<span class="card-product-price"> 
											<span>${vo.exhibition_start_date}</span> ~ <span>${vo.exhibition_end_date}</span>
										</span>
										<!--Action-->
										<span class="card-product-view-btn"> 
											<a href="#!" class="link-underline mb-1 fw-semibold text-dark">상세보기</a>
										</span>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				<div class="text-center pt-2">
					<a href="/exhibition/ExhibitionDate.do" class="btn btn-dark btn-lg btn-hover-text mb-2 me-2">
						<span class="btn-hover-label label-default">All Exhibition</span> <span
						class="btn-hover-label label-hover">Search Date</span>
					</a>
				</div>
			</div>
		</section>

		<section class="position-relative overflow-hidden bg-white">
			<div
				class="position-absolute w-100 w-lg-60 start-0 top-0 h-100 bg-tint-primary w-100 rounded-end-lg-4">
			</div>
			<div class="container py-9 py-lg-11 position-relative">
				<div class="row align-items-center">
					<div class="col-md-6 col-xl-5 ms-md-auto order-last order-md-1">

						<span class="d-block mb-2"><i
							class="bx bx-stopwatch fs-5 me-1"></i> 전시 종료 임박!! </span>
						<div
							class="countdown-timer py-3 mb-3 d-flex flex-wrap align-items-center"></div>
						<h3>${volast.exhibition_title}</h3>	
						<br>
						<%-- <h6 class="display-1 mb-4">${volast.exhibition_title}</h6> --%>
						<%-- <h5 class="mb-5">${volast.exhibition_price} 원</h5> --%>
						<a href="#" class="btn btn-dark btn-lg btn-hover-text mb-2 me-2">
							<span class="btn-hover-label label-default">Explore
								products</span> <span class="btn-hover-label label-hover">Explore
								products</span>
						</a>
						
					</div>
					<div class="col-md-6 ms-auto mb-5 mb-md-0 order-1 order-md-last">
						<div class="position-relative pe-12 pb-12">
							<%-- <img src="${volast.exhibition_image }"
								class="img-fluid position-absolute w-50 end-0 bottom-0 rounded-4"
								alt="">  --%>
								<img src="${volast.exhibition_image}"
								class="img-fluid rounded-3" alt="" style="width:650px">
							

						</div>
					</div>
				</div>
			</div>
		</section>


		<section class="position-relative bg-white">
			<div class="container py-9 py-lg-11"></div>
		</section>
	</main>


	<jsp:include page="/footer.jsp" />


</body>


<script src="/resources/js/theme.bundle.js"></script>

<!--Page Countdown script-->
<script src="/resources/vendor/node_modules/js/jquery.min.js"></script>
<script src="/resources/vendor/node_modules/js/jquery.countdown.min.js"></script>
<script src="/resources/vendor/node_modules/js/swiper-bundle.min.js"></script>

<script>
	//swiper
	//Classic
	var swiperClassic = new Swiper(".swiper-classic", {
		slidesPerView : 1,
		spaceBetween : 0,
		effect : 'fade',
		speed : 500,
		loop : true,
		autoplay : {
			delay : 2500
		},
		pagination : {
			el : ".swiperClassic-pagination",
			type : "fraction"
		},
		navigation : {
			nextEl : ".swiperClassic-button-next",
			prevEl : ".swiperClassic-button-prev"
		}
	});

	function get1dayFromNow() {
		
		/* 시간 계산하는 구간  */
		return new Date(new Date().valueOf() + 1 * 24 * 60 * 60 * 1000);
	}

	var $clock = $('.countdown-timer');

	$clock
			.countdown(
					get1dayFromNow(),
					function(event) {
						$(this)
								.html(
										event
												.strftime('<div class="d-flex flex-column px-2 width-7x"><h2 class="mb-0 h4">%H</h2><span class="small text-muted">Hours</span></div><div class="d-flex flex-column px-2 width-7x"><h2 class="mb-0 h4">%M</h2><span class="small text-muted">Minutes</span></div><div class="d-flex flex-column px-2 width-7x"><h2 class="mb-0 h4">%S</h2><span class="small text-muted">Seconds</span></div>'));
					});
</script>

</html>
