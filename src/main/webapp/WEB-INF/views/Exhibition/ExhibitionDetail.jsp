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

<!--Flatpickr-->
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/flatpickr.min.css">

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

<!-- <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>

<style>
* {
	font-family: 'Spoqa Han Sans Neo', 'sans-serif';
}
</style> -->
<title>Assan Shop</title>
</head>

<body>
	<!--:Preloader Spinner-->
	<div class="spinner-loader bg-gradient-secondary text-white">
		<div class="spinner-border text-primary" role="status"></div>
		<span class="small d-block ms-3">Loading...</span>
	</div>


	<jsp:include page="/header.jsp" />


	<!--Main content-->
	<main>
		<section class="position-relative bg-white">
			<div class="container py-9 position-relative">
				<div class="row justify-content-between">
					<div class="col-lg-6 col-sm-7 mx-auto mx-lg-0 mb-5 mb-lg-0">
						<img src="${vo.exhibition_image}" alt="" style="width: 1500px"
							class="img-fluid mb-3"> <img
							src="/resources/img/exam/22.jpg" alt="" class="img-fluid mb-3">
						<!-- <img src="/resources/img/shop/single3.jpg" alt="" class="img-fluid"> -->
					</div>
					<!--/.col-->
					<div class="col-md-8 mx-auto col-lg-5">

						<div class="sticky-top top-0">
							<!--Breadcrumbs-->
							<nav class="d-md-flex" aria-label="breadcrumb">
								<ol class="breadcrumb mb-3">
									<p class="date">${vo.exhibition_total_date}</p>
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
									<h3 class>${vo.exhibition_title}</h3>
									<div class="d-flex justify-content-between align-items-center">
										<div>
											<p class="fs-4 mb-0">
												${vo.exhibition_price} won
												<!-- 												<del class="text-muted">15,000won</del> -->
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
										<h6 class="mb-0" style="color: #f15b66;">Location</h6>
										<!-- <a href="#!" class="fw-normal small">Size Guide</a> -->
									</div>
									<div
										class="d-md-flex align-items-center justify-content-between">
										<h6>${vo.exhibition_location}</h6>
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
							<div class="d-grid mb-2">
								<a href="#" class="btn btn-primary hover-lift"> <i
									class="bx bx-heart fs-4 me-2"></i> Add to Wishlist
								</a>
							</div>
							<div class="d-grid">
								<a href="#" class="btn btn-primary hover-lift"
									data-bs-target="#modal-pay-bar-2" data-bs-toggle="modal"> <i
									class="bx bx-credit-card fs-4 me-2"></i> Book a Ticket
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


	<!-- 예매 모달 시작 -->
	<div id="modal-pay-bar-2" class="modal fade" tabindex="-1"
		aria-labelledby="modal-pay-bar-2" aria-hidden="true">
		<div class="modal-dialog modal-dialog-top modal-md">
			<div class="modal-content position-relative border-0">
				<div class="position-relative px-4">
					<div
						class="position-absolute end-0 width-7x top-0 d-flex align-items-center justify-content-center"
						style="margin-top: 5px;">
						<button type="button" class="btn-close w-auto small"
							data-bs-dismiss="modal" aria-label="Close">
							<i class="bx bx-x fs-4 me-2"></i>
						</button>
					</div>
					<form class="mb-0" action="ExhibitionPayment.do">
						<div class="align-items-center">
							<h6 class="d-flex"
								style="justify-content: center; margin-top: 15px;">예매하기</h6>

							<!-- 구분선 -->
							<div class="d-flex align-items-center py-3">
								<span class="flex-grow-1 border-bottom pt-1"></span>
							</div>
							<!-- 이름 -->
							<div class="mb-3">
								<label class="form-label" for="profile_name">Name</label> <input
									type="text" name="customer_id" placeholder="세션아이디"
									value="default" readonly="readonly" class="form-control">
							</div>
							<!-- 예매자 이름 -->
							<div class="mb-3">
								<label class="form-label" for="profile_name">예매자  *전시회 입장 시 말씀해주세요.</label> <input
									type="text" name="consumer_name" placeholder="구매자" value="김한수"
									class="form-control">
							</div>
							<!-- 전시회 아이디 -->
							<div class="mb-3">
								<label class="form-label" for="profile_name">전시회 아이디</label> <input
									type="text" name="exhibition_id" placeholder="전시아이디"
									value="${vo.exhibition_id}" readonly="readonly"
									class="form-control">
							</div>
							<!-- 전시회 이름 -->
							<div class="mb-3">
								<label class="form-label" for="profile_name">전시회 이름</label> <input
									type="text" name="title" placeholder="전시회명"
									value="${vo.exhibition_title}" readonly="readonly"
									class="form-control">
							</div>
							<!-- 예매자 연락처 -->
							<div class="mb-3">
								<label class="form-label" for="profile_name">예매자 연락처</label> <input
									type="text" name="consumer_ph" placeholder="핸드폰번호" value="0"
									readonly="readonly" class="form-control">
							</div>
							<!-- 방문 날짜 -->
							<div class="mb-3">
								<label class="form-label" for="profile_name">방문 날짜</label> <input
									type="text" name="ticketing_date" placeholder="날짜"
									data-flatpickr value="2022.01.01" class="form-control">
								<!-- 달력 들어갈 예정-->
								<!-- 								<input type="text" value="2022-01-14" data-flatpickr class="form-control"> -->
							</div>
							<!-- 구분선 -->
							<div class="d-flex align-items-center py-3">
								<span class="flex-grow-1 border-bottom pt-1"></span>
							</div>

							<!-- 결제하기 섹션 -->
							<!-- 기본값 -->
							<div class="mb-3">
								<label class="form-label" for="profile_name">금액</label> <input
									type="number" name="totalCustomer" id="d_money"
									value="${vo.exhibition_price}" readonly="readonly"
									class="form-control">
							</div>
							<!-- 인원 -->
							<div class="mb-2">
								<label class="form-label" for="profile_name">인원 선택</label> <input
									type="number" name="totalCustomer" id="result" value="1"
									readonly="readonly" class="form-control">
							</div>
							<div class="mb-3 d-flex" style="justify-content: space-between;">
								<button class="btn btn-light" type="button"
									onclick='count("plus")' style="width: 49%;">
									<i class="bx bx-caret-up fs-4 me-2"></i>
								</button>
								<button class="btn btn-light" type="button"
									onclick='count("minus")' style="width: 49%;">
									<i class="bx bx-caret-down fs-4 me-2"></i>
								</button>
							</div>
							<!-- 금액 -->
							<div class="mb-3">
								<label class="form-label" for="profile_name">총 금액</label> <input
									type="number" name="totalPrice" id="money"
									value="${vo.exhibition_price}" readonly="readonly"
									class="form-control">
							</div>


							<!-- 구분선 -->
							<div class="d-flex align-items-center py-3">
								<span class="flex-grow-1 border-bottom pt-1"></span>
							</div>
							<!-- 결제하기 버튼 -->
							<div class="mb-2 text-end">
								<button type="submit" class="btn btn-primary form-control">결제하기</button>
							</div>
							<div class="mb-3 text-end">
								<button type="reset" class="btn btn-outline-dark form-control">취소하기</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- 예매 모달 끝 -->


	<hr>
	<!-- 추후 결제모달로 바뀔 예정 (시작) -->
	<form action="ExhibitionPayment.do">
		<br> <br> <br>
		<h1>결제모달 예정</h1>
		<hr>
		<input type="text" name="customer_id" placeholder="세션아이디"
			value="default" readonly="readonly"> <br> <input
			type="text" placeholder="구매자" name="consumer_name" value="김한수">
		<br> <input type="text" placeholder="전시아이디" name="exhibition_id"
			value="${vo.exhibition_id}" readonly="readonly"> <br> <input
			type="text" value="${vo.exhibition_title}" placeholder="전시회명"
			readonly="readonly" name="title"> <br> <input
			type="text" value="0" placeholder="핸드폰번호" name="consumer_ph">
		<br> <input type="text" placeholder="날짜" value="2022.01.01"
			name="ticketing_date" readonly="readonly">
		<!-- 달력 들어갈 예정-->
		<br> <br> 금액 :<input type="number"
			value="${vo.exhibition_price}" id="money" readonly="readonly"
			name="totalPrice"> 인원 : <input type="number" id='result'
			value="1" name="totalCustomer"> 기본값 : <input type="number"
			value="${vo.exhibition_price}" id="d_money" readonly="readonly">
		<input type='button' onclick='count("plus")' value='+' /> <input
			type='button' onclick='count("minus")' value='-' /> <br> <input
			type="submit" value="결제하기"> <input type="reset" value="취소하기">
	</form>
	<script type="text/javascript">
		function count(type) {
			alert("함수호출")
			var totalMoney = document.getElementById("money");
			var totalResult = document.getElementById("result");
			var deafultMoney = document.getElementById("d_money");

			
			var money = totalMoney.value;
			var d_money = deafultMoney.value;
			var result = totalResult.value;
			
			alert(money)
	
			// 더하기/빼기
			if (type === 'plus') {
				alert("+")
				result = parseInt(result) + 1;
				money = parseInt(money) + parseInt(d_money);
				alert(money)
			} else if (type === 'minus') {
				alert("-")
				result = parseInt(result) - 1;
				money = parseInt(money) - parseInt(d_money);
			
			}
			// 결과 출력
			totalResult.value = result;
			totalMoney.value = money;
		}
	</script>
	<hr>
	<br>
	<br>
	<br>
	<hr>
	<!-- 추후 결제모달로 바뀔 예정 (끝)  -->


	<jsp:include page="/footer.jsp" />


	<!-- :Back to top -->
	<a href="#top"
		class="position-fixed toTop d-none d-sm-flex btn btn-light rounded-circle p-0 flex-center width-4x height-4x z-index-fixed end-0 bottom-0 mb-3 me-3">
		<i class="bx bxs-up-arrow align-middle lh-1"></i>
	</a>


</body>

<!-- scripts -->
<script src="/resources/js/theme.bundle.js"></script>
<script src="/resources/vendor/node_modules/js/gsap.min.js"></script>

<!--Select scripts-->
<script src="/resources/vendor/node_modules/js/choices.min.js"></script>
<script src="/resources/vendor/node_modules/js/simplebar.min.js"></script>

<!-- 달력 선택 스크립트 -->
<script src="/resources/vendor/node_modules/js/flatpickr.min.js"></script>
<script>
        let pickr = document.querySelectorAll("[data-flatpickr]");
        pickr.forEach(el => {
            const t = {
                ...el.dataset.flatpickr ? JSON.parse(el.dataset.flatpickr) : {},
            }
            new flatpickr(el, t)
        }
        );
	</script>

</html>
