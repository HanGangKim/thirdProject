<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<!--예매내역-->
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/resources/img/favicon.ico" type="image/ico">


<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/choices.min.css">

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


<title>My Ticket</title>
</head>

<body>
	<!--Preloader Spinner-->
	<div class="spinner-loader bg-gradient-secondary text-white">
		<div class="spinner-border text-primary" role="status"></div>
		<span class="small d-block ms-2">Loading...</span>
	</div>

	<jsp:include page="/header.jsp" />


	<!--Main content-->
	<main>

		<!--Page header start-->
		<section class="position-relative bg-dark text-white overflow-hidden">
			<svg
				class="position-absolute end-0 top-0 text-primary width-14x h-auto w-lg-20"
				width="450" height="426" viewBox="0 0 450 426" fill="none"
				xmlns="http://www.w3.org/2000/svg">
        <g clip-path="url(#clipPageHeader)">
          <path fill-rule="evenodd" clip-rule="evenodd"
					d="M298.999 -192.241C355.489 -184.29 381.574 -118.483 421.706 -77.9221C452.436 -46.8634 475.477 -12.1582 507.054 18.0386C563.019 71.558 665.455 91.3474 678.539 167.687C690.554 237.781 626.362 310.281 562.498 341.514C500.548 371.812 427.798 307.451 360.652 323.154C299.843 337.375 269.726 418.21 207.597 424.514C139.082 431.466 55.4816 414.802 16.3827 358.087C-23.1945 300.678 21.5018 222.882 20.5205 153.15C19.6978 94.6861 -14.5698 34.0886 11.0842 -18.4478C36.6541 -70.8118 102.021 -85.7884 151.898 -115.896C200.173 -145.036 243.168 -200.099 298.999 -192.241Z"
					fill="currentColor" />
        </g>
        <defs>
          <clipPath id="clipPageHeader">
            <rect width="450" height="426" fill="white" />
          </clipPath>
        </defs>
      </svg>
			<img src="/resources/img/vectors/dec-brush1.svg"
				class="position-absolute end-0 top-0 me-2 mt-2 me-lg-5 mt-lg-5 fill-warning width-8x h-auto"
				data-inject-svg alt="">
			<div class="container py-11 py-lg-15 position-relative">
				<div class="row align-items-center">
					<div class="col-lg-10 mx-auto text-center">
						<nav class="d-flex justify-content-center" aria-label="breadcrumb">
							<ol class="breadcrumb mb-3">
								<li class="breadcrumb-item"><a href="#!">Home</a></li>
								<li class="breadcrumb-item active">Mypage</li>
								<li class="breadcrumb-item active">Ticket</li>
							</ol>
						</nav>
						<h1 class="mb-0 display-3">Ticket</h1>
					</div>
				</div>
				<!--/.row-->
			</div>
		</section>

		<!--예매내역카드 섹션 시작-->
		<section class="position-relative">
			<div class="container pb-7 pb-lg-12 pt-7">
				<div class="row">
					<div class="col-lg-10 offset-lg-1">
						<!--:Wishlist card-->
						<div
							class="card hover-lift shadow flex-sm-row mb-4 align-items-center">
							<div class="col-sm-5 col-lg-4 mb-4 mb-md-0">
								<a href="#" class="d-block"> <img
									src="/resources/img/shop/products/05.jpg"
									class="img-fluid card-img-top" alt="">
								</a>
							</div>
							<div class="col-sm-7 py-sm-5 col-12 col-lg-5 offset-lg-1 px-3">
								<a href="#" class="mb-3 d-block text-dark">
									<h5>[ 얼리버드 ] 호안 미로 : 여인, 새, 별</h5>
								</a>
								<p class="lead">2022.03.30</p>
								<div class="d-flex mb-3 align-items-center">
									<span class="text-muted me-3">Place</span> <strong>마이아트뮤지엄</strong>
								</div>
								<div class="d-flex mb-3 align-items-center">
									<span class="me-3 text-muted">Date</span> <strong>2022.01.30
										~ 2022.04.30</strong>
								</div>
								<div class="d-flex mb-3 align-items-center">
									<span class="text-muted me-3">Price</span> <strong
										class="text-success">7,200</strong>
								</div>
								<!--QR 확인버튼-->
								<div class="d-grid pb-4 pb-md-0">
									<a href="#" class="btn btn-primary"
										style="margin-bottom: 10px;">Move to qr</a> <a href="#"
										class="btn btn-dark">후기작성</a>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--예매내역카드 섹션 끝-->
	</main>


	<jsp:include page="/footer.jsp" />

	<!-- :Back to top -->
	<a href="#top"
		class="position-fixed toTop d-none d-sm-flex btn btn-light rounded-circle p-0 flex-center width-4x height-4x z-index-fixed end-0 bottom-0 mb-3 me-3">
		<i class="bx bxs-up-arrow align-middle lh-1"></i>
	</a>


	<!--cursor-->
	<div class="cursor">
		<div class="cursor__inner"></div>
	</div>

	<!-- scripts -->
	<script src="/resources/js/theme.bundle.js"></script>
	<script src="/resources/vendor/node_modules/js/gsap.min.js"></script>
	<script src="/resources/vendor/node_modules/js/cursor.js"></script>

	<!--Select scripts-->
	<script src="/resources/vendor/node_modules/js/choices.min.js"></script>

</body>

</html>