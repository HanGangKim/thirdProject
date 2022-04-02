<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/resources/img/favicon.ico" type="image/ico">
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/choices.min.css">
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/simplebar.min.css">
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

<!--:Simplebar css ()-->
<style type="text/css">
.simplebar-track.simplebar-vertical {
	width: 7px;
}

.simplebar-scrollbar:before {
	background: currentColor;
}

.date {
	margin: 0px;
	color: gray;
}
</style>
<title>Assan Shop</title>
</head>

<body>
	<!--:Preloader Spinner-->
	<div class="spinner-loader bg-gradient-secondary text-white">
		<div class="spinner-border text-primary" role="status"></div>
		<span class="small d-block ms-3">Loading...</span>
	</div>
	<!--Header Start-->

	<nav class="navbar navbar-expand-lg navbar-light bg-white">
		<div class="container position-relative">
			<a class="navbar-brand" href="index.html"> <img
				src="/resources/img/logo/logo-shop.svg" alt="" class="img-fluid">
			</a>
			<div
				class="d-flex align-items-center navbar-no-collapse-items order-lg-last">
				<button class="navbar-toggler order-last" type="button"
					data-bs-toggle="collapse" data-bs-target="#mainNavbarTheme"
					aria-controls="mainNavbarTheme" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"> <i></i>
					</span>
				</button>
				<!-- <div class="nav-item me-4">
					<a href="demo-shop-wishlist.html"
						class="nav-link lh-1 position-relative"> <i
						class="bx bx-heart fs-4"></i>
					</a>
				</div> -->
				<!-- <div class="nav-item me-4">
					<a href="#offcanvasCart" data-bs-toggle="offcanvas"
						class="nav-link lh-1 position-relative"> <i
						class="bx bx-shopping-bag fs-4"></i> <span
						class="badge p-0 position-absolute end-0 top-0 me-n3 mt-n2 lh-1 fw-semibold width-2x height-2x bg-white shadow-sm rounded-circle flex-center text-dark">3</span>
					</a>
				</div> -->
				<div class="nav-item me-4 me-lg-0">
					<a href="#" data-bs-target="#modal-search-bar-2"
						data-bs-toggle="modal" class="nav-link lh-1"> <i
						class="bx bx-search fs-4"></i>
					</a>
				</div>
			</div>
			<div class="collapse navbar-collapse" id="mainNavbarTheme">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item dropdown me-lg-3"><a href="demo-shop.html"
						class="nav-link" href="#" role="button" aria-haspopup="false"
						aria-expanded="false"> Home </a></li>

					<li class="nav-item nav-item dropdown position-lg-static me-lg-3">
						<a href="demo-shop-products-full-width.html" class="nav-link"
						href="#" role="button" aria-haspopup="true" aria-expanded="false">
							Exhibition </a>
					</li>
					<li class="nav-item nav-item dropdown position-static me-lg-3">
						<a href="demo-real-estate-listing-grid.html" class="nav-link"
						href="#" role="button" aria-haspopup="true" aria-expanded="false">
							Reviews </a>
					<li class="nav-item dropdown me-lg-3"><a
						href="page-account-signin.html" class="nav-link"
						data-bs-auto-close="outside" href="#" role="button"
						aria-haspopup="true" aria-expanded="false">SignIn </a></li>
					<li class="nav-item"><a href="page-account-signup.html"
						class="nav-link" href="#!"> SignUp </a></li>
				</ul>
			</div>
		</div>
	</nav>
	</header>
	<!--:Search bar modal-->
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
								<svg viewBox="0 0 24 24" width="20" height="20"
									fill="currentColor" class="opacity-25">
                                        <path
										d="M2.293 10a6.99 6.99 0 0 0 11.187 5.6l6.106 6.107L21 20.293l-6.106-6.106A6.997 6.997 0 1 0 2.293 10zm2 0a5 5 0 1 1 5 5 5 5 0 0 1-5-5z">
                                        </path>
                                    </svg>

								<input type="text" placeholder="Search...."
									class="form-control shadow-none border-0 flex-grow-1 form-control-lg">
							</div>
						</div>
					</form>
				</div>

				<div class="p-4 border-top">
					<div class="d-flex align-items-center mb-3">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" class="bx bx-lightning-charge-fill"
							viewBox="0 0 16 16">
                                <path
								d="M11.251.068a.5.5 0 0 1 .227.58L9.677 6.5H13a.5.5 0 0 1 .364.843l-8 8.5a.5.5 0 0 1-.842-.49L6.323 9.5H3a.5.5 0 0 1-.364-.843l8-8.5a.5.5 0 0 1 .615-.09z" />
                            </svg>
						<h6 class="mb-0 ms-2">Top searches</h6>
					</div>
					<div class="d-flex flex-wrap align-items-center">
						<span><a href="#!"
							class="badge badge-pill border text-muted me-1 mb-1 px-3 py-1">Jeans</a></span>
						<span><a href="#!"
							class="badge badge-pill border text-muted me-1 mb-1 px-3 py-1">Shoes</a></span>
						<span><a href="#!"
							class="badge badge-pill border text-muted me-1 mb-1 px-3 py-1">Watches</a></span>
						<span><a href="#!"
							class="badge badge-pill border text-muted me-1 mb-1 px-3 py-1">Men's</a></span>
						<span><a href="#!"
							class="badge badge-pill border text-muted me-1 mb-1 px-3 py-1">Sneakers</a></span>
						<span><a href="#!"
							class="badge badge-pill border text-muted me-1 mb-1 px-3 py-1">Casual</a></span>
						<span><a href="#!"
							class="badge badge-pill border text-muted me-1 mb-1 px-3 py-1">Shirts</a></span>
						<span><a href="#!"
							class="badge badge-pill border text-muted me-1 mb-1 px-3 py-1">T-shirts</a></span>
						<span><a href="#!"
							class="badge badge-pill border text-muted me-1 mb-1 px-3 py-1">Lowers</a></span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--:Offcanvas end-->
	<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasCart"
		aria-labelledby="offcanvasCart">
		<div
			class="border-bottom offcanvas-header align-items-center justify-content-between">
			<h5 class="mb-0">Your Cart (3)</h5>
			<button type="button"
				class="btn-close text-reset p-0 m-0 width-3x height-3x flex-center ms-auto"
				data-bs-dismiss="offcanvas" aria-label="Close">
				<svg xmlns="http://www.w3.org/2000/svg"
					preserveAspectRatio="xMidYMid meet" width="16" height="16"
					viewBox="0 0 128 128">
                        <g>
                            <path stroke="currentColor" stroke-width="8"
						stroke-linecap="square" fill="none"
						d="M7 7l114 114m0-114l-114 114"></path>
                        </g>
                    </svg>
			</button>
		</div>
		<div class="offcanvas-body p-4">
			<ul class="list-unstyled no-animation mb-0">
				<li class="d-flex py-3 border-bottom">
					<div class="me-1">
						<a href="#!"><img src="/resources/img/shop/backpack2.jpg"
							class="height-10x hover-lift hover-shadow w-auto rounded-1"
							alt=""></a>
					</div>
					<div class="flex-grow-1 px-4 mb-3">
						<a href="#!" class="text-dark d-block lh-sm fw-semibold mb-2">Laptop
							backpack water proof</a>
						<p class="mb-0 small">
							<strong>$36.00</strong> x <strong>1</strong>
						</p>
					</div>
					<div class="d-block text-end">
						<a href="#!" class="text-muted small text-decoration-underline">
							Remove </a>
					</div>
				</li>
				<li class="d-flex py-3">
					<div class="me-1">
						<a href="#!"><img src="/resources/img/shop/jacket1.jpg"
							class="height-10x hover-lift hover-shadow w-auto rounded-1"
							alt=""></a>
					</div>
					<div class="flex-grow-1 px-4 mb-3">
						<a href="#!" class="text-dark d-block lh-sm fw-semibold mb-2">Brown
							denim jacket for mens</a>
						<p class="mb-0 small">
							<strong>$59.00</strong> x <strong>2</strong>
						</p>
					</div>
					<div class="d-block text-end">
						<a href="#!" class="text-muted small text-decoration-underline">
							Remove </a>
					</div>
				</li>
				<li
					class="d-flex p-3 mb-3 border-top justify-content-between align-items-center">
					<span class="fw-normal">Subtotal</span> <span
					class="text-dark fw-bold">$154.00</span>
				</li>
			</ul>
		</div>
		<div class="offcanvas-footer p-4 border-top">
			<ul class="list-unstyled mb-0">

				<li class="pb-2 d-grid"><a href="#"
					class="btn btn-secondary btn-hover-arrow"><span>View
							shopping cart</span></a></li>
				<li class="d-grid"><a href="#"
					class="btn btn-primary btn-hover-arrow"><span>Checkout</span></a></li>
			</ul>
		</div>
	</div>

	<!--Main content-->
	<main>
		<section class="position-relative bg-white">
			<div class="container py-9 position-relative">
				<div class="row justify-content-between">
					<div class="col-lg-6 col-sm-7 mx-auto mx-lg-0 mb-5 mb-lg-0">
						<img src="/resources/img/mainposter/14. 기안84 제1회 개인전.PNG" alt="" style="width:1500px"
							class="img-fluid mb-3"> 
							<img src="/resources/img/exam/22.jpg" alt="" class="img-fluid mb-3">
						<!-- <img src="/resources/img/shop/single3.jpg" alt="" class="img-fluid"> -->
					</div>
					<!--/.col-->
					<div class="col-md-8 mx-auto col-lg-5">

						<div class="sticky-top top-0">
							<!--Breadcrumbs-->
							<nav class="d-md-flex" aria-label="breadcrumb">
								<ol class="breadcrumb mb-3">
									<p class="date">2022.04.01 ~ 2022.09.25</p>
									<!-- <li class="breadcrumb-item">
                                            <a href="#!">Home</a>
                                        </li>
                                        <li class="breadcrumb-item active">
                                            Shop
                                        </li>
                                        <li class="breadcrumb-item active">
                                            Products
                                        </li>
                                        <li class="breadcrumb-item active">
                                          Womens
                                        </li> -->
								</ol>
							</nav>
							<!-- Product Description -->
							<div class="mb-4 pb-4 border-bottom">
								<div class="mb-3">
									<!-- <h2 class="mb-4 display-5">Michelangelo in Metaverse</h2> -->
									<h3 class>미켈란젤로 인 메타버스</h3>
									<div class="d-flex justify-content-between align-items-center">
										<div>
											<p class="fs-4 mb-0">
												9,000won
												<del class="text-muted">15,000won</del>
											</p>
										</div>
										<div>
											<!-- <small class="text-success">In Stock</small> -->
										</div>
									</div>
								</div>
							</div>

							<div class="mb-4 pb-4 border-bottom">
								<div class="mb-0">
									<div
										class="d-flex align-items-center mb-3 justify-content-between">
										<h6 class="mb-0" style="color: #f15b66;">Galley</h6>
										<!-- <a href="#!" class="fw-normal small">Size Guide</a> -->
									</div>
									<div
										class="d-md-flex align-items-center justify-content-between">
										<h6>제주 탠저린맨션</h6>
										<div class="d-flex" role="group"
											aria-label="Basic checkbox toggle button group">
											<input type="radio" name="sizeRadio" class="btn-check"
												id="radioSizeSM">
											<!-- <label
                                                    class="btn btn-outline-secondary rounded-2 flex-center me-2 px-2 btn-sm"
                                                    for="radioSizeSM">S</label> -->

											<input type="radio" name="sizeRadio" class="btn-check"
												id="radioSizeM" checked>
											<!-- <label
                                                    class="btn btn-outline-secondary rounded-2 flex-center me-2 px-2 btn-sm"
                                                    for="radioSizeM">M</label> -->

											<input type="radio" name="sizeRadio" class="btn-check"
												id="radioSizeL">
											<!-- <label
                                                    class="btn btn-outline-secondary rounded-2 flex-center me-2 px-2 btn-sm"
                                                    for="radioSizeL">L</label> -->
											<input type="radio" name="sizeRadio" class="btn-check"
												id="radioSizeXL">
											<!-- <label
                                                    class="btn btn-outline-secondary rounded-2 flex-center me-2 px-2 btn-sm"
                                                    for="radioSizeXL">XL</label> -->
											<input type="radio" name="sizeRadio" class="btn-check"
												id="radioSizeXXL">
											<!-- <label
                                                    class="btn btn-outline-secondary rounded-2 flex-center me-2 px-2 btn-sm"
                                                    for="radioSizeXXL">XXL</label> -->
										</div>


									</div>
								</div>
								<!--/.size-->
							</div>
							<!--/.size-->


							<div class="mb-4 pb-4 border-bottom">
								<div
									class="d-flex justify-content-between align-content-stretch">

									<!--colors-->
									<div class="">
										<h6 style="color: #f15b66;">Schedule</h6>
										<div class="d-flex" role="group"
											aria-label="Basic radio toggle button group">
											<h6>10:30 ~ 19:00 (입장마감 18:00) 연중무휴, 추석 당일 휴관</h6>
											<!-- <input type="radio" class="btn-check" name="btnradio" id="btnradiobrown"
                                                    autocomplete="off" checked>
                                                <label
                                                    class="shop-product-color btn px-2 me-2 flex-center rounded-2 text-white product-brown"
                                                    for="btnradiobrown"></label>

                                                <input type="radio" class="btn-check" name="btnradio" id="btnradiogray">
                                                <label
                                                    class="shop-product-color btn px-2 me-2 flex-center rounded-2 text-white product-gray"
                                                    for="btnradiogray"></label>

                                                <input type="radio" class="btn-check" name="btnradio" id="btnradioblue">
                                                <label
                                                    class="shop-product-color btn px-2 me-2 flex-center rounded-2 text-white product-blue"
                                                    for="btnradioblue"></label> -->
										</div>
										<!--Radio buttons for product colors-->
									</div>
									<!--/.colors-->

									<!--Right-->
									<div>
										<h6 class="mb-3"></h6>
										<!-- <select class="form-control form-control-sm width-7x"
                                                data-choices='{"searchEnabled":false}'>
                                                <option value="1" selected>1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                            </select> -->
									</div>
								</div>
							</div>
							<!--/.colors-->
							<div class="d-grid">
								<a href="#" class="btn btn-primary hover-lift"> <i
									class="bx bx-cart-alt fs-4 me-2"></i> Add to Wishlist
								</a>
							</div>
							<br>
							<div class="d-grid">
								<a href="#" class="btn btn-primary hover-lift"> <i
									class="bx bx-cart-alt fs-4 me-2"></i> Book a Ticket
								</a>
							</div>
							<!--/.cart-action-->

						</div>
					</div>
					<!--/.col-->
				</div>
			</div>
		</section>
		
		
	</main>

	<!-- <footer class="position-relative bg-dark text-white overflow-hidden">
		<div class="container pt-9 pt-lg-11 pb-6 position-relative">
			<div class="row">
				<div class="col-6 col-lg-3 col-xl-2 order-lg-2 ms-lg-auto mb-6">
					<h6 class="mb-4">Account</h6>
					nav
					<ul class="nav flex-column mb-0">
						<li class="nav-item"><a class="nav-link" href="#!">Placing
								an order</a></li>
						<li class="nav-item"><a class="nav-link" href="#!">Shipping</a></li>
						<li class="nav-item"><a class="nav-link" href="#!">Track
								order</a></li>
						<li class="nav-item"><a class="nav-link" href="#!">Orders</a></li>
						<li class="nav-item"><a class="nav-link" href="#!">Assan
								Pay</a></li>
					</ul>
					/.nav
				</div>

				<div class="col-6 col-lg-3 col-xl-2 order-lg-3 ms-lg-auto mb-6">
					<h6 class="mb-4">Company</h6>

					<ul class="nav flex-column mb-0">
						<li class="nav-item"><a class="nav-link" href="#!">About</a></li>
						<li class="nav-item"><a class="nav-link" href="#!">Become
								a seller</a></li>
						<li class="nav-item"><a class="nav-link" href="#!">News
								&amp; Media</a></li>
						<li class="nav-item"><a class="nav-link" href="#!">Contact</a></li>
						<li
							class="nav-item d-flex justify-content-between align-items-center">
							<a class="nav-link" href="#!">Help center </a>
						</li>
					</ul>
					/.nav
				</div>

				<div class="col-md-6 col-lg-3 col-xl-2 ms-lg-auto order-lg-4 mb-6">
					<h6 class="mb-4">Top Brands</h6>
					<ul class="nav flex-column mb-0">
						<li class="nav-item"><a class="nav-link" href="#!">Wrangler</a></li>
						<li class="nav-item"><a class="nav-link" href="#!">Us
								polo Assn.</a></li>
						<li class="nav-item"><a class="nav-link" href="#!">Puma</a></li>
						<li class="nav-item"><a class="nav-link" href="#!">Levis</a></li>
						<li
							class="nav-item d-flex justify-content-between align-items-center">
							<a class="nav-link" href="#!">Flying Machine </a>
						</li>
					</ul>
				</div>

				<div class="col-lg-3 col-md-6 order-lg-1 mb-6">
					<div class="d-flex align-items-md-stretch flex-column h-100">
						<div class="flex-grow-1 d-flex flex-column">
							<small class="d-block mb-3"> 745K Followers </small>
							<div class="mb-4">
								<a href="#!" class="btn btn-outline-white btn-rise">
									<div class="btn-rise-bg bg-white"></div>
									<div class="btn-rise-text">
										<i class="bx bxl-instagram me-2 align-middle"></i> Follow us
										on Instagram
									</div>
								</a>
							</div>
						</div>

						Copyright
						<p class="small text-muted mb-0">© Assan. by Creative DM</p>
						End Copyright
					</div>
				</div>
			</div>
			<hr
				class="bg-transparent border-top border-white opacity-25 mb-6 mt-0">
			<div class="row align-items-md-center">
				<div class="col-md-4 mb-3 mb-md-0">
					:payment options
					<div class="d-flex justify-content-start">

						<div class="d-block me-2 my-1">
							<img src="/resources/img/payment/american_express.svg" alt="">
						</div>
						<div class="d-block me-2 my-1">
							<img src="/resources/img/payment/paypal.svg" alt="paypal">
						</div>
						<div class="d-block me-2 my-1">
							<img src="/resources/img/payment/rupay.svg" alt="rupay">
						</div>
						<div class="d-block my-1">
							<img src="/resources/img/payment/visa.svg" alt="visa">
						</div>
					</div>
					:/payment options
				</div>

				<div class="col-md-2 col-xl-4 mb-3 mb-md-0">
					Links
					<ul class="list-inline small mb-0">
						<li class="list-inline-item me-3"><a class="d-block"
							href="#!"> <i class="bx bxl-facebook fs-4"></i>
						</a></li>
						<li class="list-inline-item me-3"><a class="d-block"
							href="#!"> <i class="bx bxl-twitter fs-4"></i>
						</a></li>
						<li class="list-inline-item"><a class="d-block" href="#!">
								<i class="bx bxl-linkedin fs-4"></i>
						</a></li>
					</ul>
					End Links
				</div>


				<div class="col-md-6 col-xl-4 text-md-end">
					Links
					<ul class="list-inline small mb-0">
						<li class="list-inline-item me-3"><a class="d-block"
							href="#!">Privacy &amp; Policy</a></li>
						<li class="list-inline-item me-3"><a class="d-block"
							href="#!">Terms &amp; Conditions</a></li>
						<li class="list-inline-item"><a class="d-block" href="#!">Careers</a>
						</li>
					</ul>
					End Links
				</div>
			</div>
		</div>
	</footer> -->
	<!--./footer-->
	
    <footer id="footer"
		class="overflow-hidden position-relative bg-dark text-white">
		<!--Divider-->
		<svg class="position-absolute start-0 bottom-0 text-gray-800 h-40"
			preserveAspectRatio="none" width="100%" height="250"
			viewBox="0 0 1200 250" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path opacity="0.1" fill-rule="evenodd" clip-rule="evenodd"
				d="M0 62.5L22 46.875C44 31.25 89 0 133 0C178 0 222 31.25 267 72.9167C311 114.583 356 166.667 400 187.5C444 208.333 489 197.917 533 182.292C578 166.667 622 145.833 667 114.583C711 83.3333 756 41.6667 800 26.0417C844 10.4167 889 20.8333 933 62.5C978 104.167 1022 177.083 1067 208.333C1111 239.583 1156 229.167 1178 223.958L1200 218.75V250H1178C1156 250 1111 250 1067 250C1022 250 978 250 933 250C889 250 844 250 800 250C756 250 711 250 667 250C622 250 578 250 533 250C489 250 444 250 400 250C356 250 311 250 267 250C222 250 178 250 133 250C89 250 44 250 22 250H0V62.5Z"
				fill="currentColor" />
            <path opacity="0.1" fill-rule="evenodd" clip-rule="evenodd"
				d="M0 93.667L24.8889 87.4756C49.7778 82.8321 99.5556 71.9971 149.333 93.667C200.889 113.789 250.667 166.416 300.444 186.538C350.222 208.208 400 197.373 449.778 171.06C499.556 144.746 549.333 102.954 600.889 76.6407C650.667 50.3272 700.444 41.0401 750.222 61.1622C800 82.8321 849.778 135.459 899.556 129.268C949.333 124.624 1000.89 61.1622 1050.67 50.3272C1100.44 41.0401 1150.22 82.8321 1175.11 102.954L1200 124.624V250H1175.11C1150.22 250 1100.44 250 1050.67 250C1000.89 250 949.333 250 899.556 250C849.778 250 800 250 750.222 250C700.444 250 650.667 250 600.889 250C549.333 250 499.556 250 449.778 250C400 250 350.222 250 300.444 250C250.667 250 200.889 250 149.333 250C99.5556 250 49.7778 250 24.8889 250H0V93.667Z"
				fill="currentColor" />
        </svg>
		<div
			class="container pt-9 pt-lg-11 pb-5 pb-lg-7 position-relative z-index-1">
			<div class="row mb-5 mb-lg-7">
				<div class="col-md-4 mb-5 mb-md-0 text-md-center order-md-2">
					<a href="index.html"><img src="/resources/img/logo/logo-white.svg"
						class="width-10x d-block h-auto mx-md-auto" alt=""></a>
				</div>
				<div class="col-md-4 order-md-1 mb-3 mb-md-0">
					<a href="mailto:mail@domain.com" class="fs-4 link-hover-underline">mail@domain.com</a>
				</div>
				<div class="col-md-4 text-md-end order-md-3">
					<a href="mailto:mail@domain.com" class="fs-4 link-hover-underline">+01
						123-4567-890</a>
				</div>
			</div>
			<div class="row align-items-center">
				<div class="col-md-8 order-md-last mb-3 mb-md-0">
					<div class="d-flex flex-wrap justify-content-md-end me-n4">
						<a href="#!"
							class="small text-muted me-4 link-hover-underline my-2 block">Properties</a>
						<a href="#!"
							class="small text-muted me-4 link-hover-underline my-2 block">Careers</a>
						<a href="#!"
							class="small text-muted me-4 link-hover-underline my-2 block">Company</a>
						<a href="#!"
							class="small text-muted me-4 link-hover-underline my-2 block">Privacy
							policy</a>
					</div>
				</div>
				<div class="col-md-4 order-md-1 small">
					<span class="d-block my-2 lh-sm text-muted">&copy; Copyright
						<script>
                            document.write(new Date().getFullYear())

                        </script>. Assan
					</span>
				</div>
			</div>
		</div>

	</footer>



	

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
	<script>
		//cursor
		//cursor
	</script>

	<!--Select scripts-->
	<script src="/resources/vendor/node_modules/js/choices.min.js"></script>
	<script>
		
	</script>
	<script src="/resources/vendor/node_modules/js/simplebar.min.js"></script>
</body>

</html>
