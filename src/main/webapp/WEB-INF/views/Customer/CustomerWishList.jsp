<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
//LogOut.jsp로 이동	
response.sendRedirect("../LogOut.do");	
}else{
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
System.out.println("세션연결 성공:"+userId);
System.out.println("세션연결 성공:"+userName);
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
}
%>
<!doctype html>
<html lang="en">
<!--찜목록-->
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

<title>My Wishlist</title>

</head>

<body>
	<!--Preloader Spinner-->
	<div class="spinner-loader bg-gradient-secondary text-white">
		<div class="spinner-border text-primary" role="status"></div>
		<span class="small d-block ms-2">Loading...</span>
	</div>

	<jsp:include page="/header.jsp" />

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
								<li class="breadcrumb-item active">Wishlist</li>
							</ol>
						</nav>
						<h1 class="mb-0 display-3">Wishlist</h1>
					</div>
				</div>
				<!--/.row-->
			</div>
		</section>

		<section class="position-relative bg-white">
			<div class="container pb-7 pb-lg-12 pt-7 position-relative">
				<div class="row justify-content-between">
					<div class="col-lg-10 mx-auto">

						<!--Cart table start-->
						
						<div class="table-responsive">
							<table class="table table-striped align-middle">
								<thead>
									<tr>
										<th></th>
										<th class="small text-muted">
											<div style="min-width: 180px">Product</div>
										</th>
										<th class="small text-muted">Date</th>
										<th class="small text-muted">location</th>
										<th class="small text-muted">Price</th>
										<th></th>
									</tr>
								</thead>
						<c:forEach items="${vo}" var="vo">
								<tbody>

									<tr>
										<td><img src="${vo.exhibition_image}"
											class="width-7x rounded-3"></td>
										<td><a href="#" class="text-dark h5">${vo.exhibition_title}</a></td>
										<td>${vo.exhibition_total_date}</td>
										<td>
<!-- 										<input type="number" min="1" value="1" max="5" -->
<!-- 											name="" -->
<!-- 											class="form-control border-0 shadow-none rounded-0 bg-transparent"> -->
											<div class="form-control border-0 shadow-none rounded-0 bg-transparent">
											${vo.exhibition_location}
											</div>
										</td>
										<td>${vo.exhibition_price}원</td>
										<td><button class="btn-close text-center">
												<svg xmlns="http://www.w3.org/2000/svg" height="16"
													viewBox="0 0 24 24" width="20" fill="currentColor">
                          <path
														d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12 19 6.41z" />
                        </svg>
											</button></td>
									</tr>
							
									</c:forEach>
								</tbody>
							</table>
						</div>

						<!--Update cart button-->
						<div
							class="text-center d-md-flex align-items-center border-bottom pb-4 mb-4">
							<div class="col-md-7 mb-4 mb-md-0">
								<!-- <div class="d-grid d-sm-flex flex-grow-1 align-items-center">
                  <input type="text" class="form-control mb-2 mb-sm-0 me-sm-2" placeholder="Coupon code" name="">
                  <button type="button" class="btn btn-secondary flex-shrink-0">
                    <i class="bx bx-tag align-middle"></i> Apply Coupon </button>
                </div> -->
							</div>
							<div class="col-md-5 text-end">
								<div class="d-flex flex-column h-100 justify-content-end">
									<strong class="text-muted d-block mb-2 fs-6">Cart
										total</strong>
									<h5 class="mb-0 ms-3 h2">37,200</h5>
								</div>
							</div>
						</div>
						<!--Cart checkout-->
						<div
							class="d-flex flex-column flex-sm-row justify-content-sm-between align-items-center">
							<!--전시회 목록보기-->
							<div class="mb-3 mb-sm-0">
								<a href="demo-shop-products.html"
									class="link-hover-underline text-body"><i
									class="bx bx-arrow-left fs-6 align-middle me-1"></i>Continue
									exhibition </a>
							</div>
							<!--예매하기 버튼-->
							<div>
								<a href="/exhibition/ExhibitionTicketingSelect.do?id=<%=userId%>" class="btn btn-primary">Move
									to ticketing </a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

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


</body>

<!-- scripts -->
<script src="/resources/js/theme.bundle.js"></script>
<script src="/resources/vendor/node_modules/js/gsap.min.js"></script>
<script src="/resources/vendor/node_modules/js/cursor.js"></script>
<script>history.replaceState({}, null, location.pathname);</script>

</html>