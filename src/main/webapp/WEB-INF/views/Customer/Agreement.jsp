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

<!--Flatpickr-->
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/flatpickr.min.css">

<!--Choices css-->
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/choices.min.css">
	
<!--Agreement css-->
<!-- <link rel="stylesheet"
	href="/resources/css/agreement.css"> -->

<title>Sign Up</title>

<style>
.choices__list--single {
	padding: 0px;
}

.choices {
	position: unset;
	overflow: hidden;
	margin-bottom: 24px;
	font-size: 16px;
	margin-bottom: 24px;
}
</style>

</head>

<body>
	<!--Preloader Spinner-->
	<div class="spinner-loader bg-tint-primary">
		<div class="spinner-border text-primary" role="status"></div>
		<span class="small d-block ms-2">Loading...</span>
	</div>

	<!--Header Start-->
	<header class="z-index-fixed">
		<!--네비 시작-->
		<nav class="navbar navbar-expand-lg navbar-light bg-white">
			<div class="container position-relative">
				<a class="navbar-brand" href="demo-shop.html"> <img
					src="/resources/img/logo/logo-shop.svg" alt="" class="img-fluid">
				</a>
				<div
					class="d-flex align-items-center navbar-no-collapse-items order-lg-last"
					style="width: 88px; justify-content: flex-end;">
					<button class="navbar-toggler order-last" type="button"
						data-bs-toggle="collapse" data-bs-target="#mainNavbarTheme"
						aria-controls="mainNavbarTheme" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"> <i></i>
						</span>
					</button>
					<div class="nav-item me-4 me-lg-0">
						<a href="#" data-bs-target="#modal-search-bar-2"
							data-bs-toggle="modal" class="nav-link lh-1"> <i
							class="bx bx-search fs-4"></i>
						</a>
					</div>
				</div>
				<div class="collapse navbar-collapse" id="mainNavbarTheme">
					<ul class="navbar-nav mx-auto">
						<!--홈-->
						<li class="nav-item dropdown me-lg-3"><a class="nav-link"
							href="demo-shop.html" role="button" aria-haspopup="false"
							aria-expanded="false"> Home </a></li>
						<!--전시회-->
						<li class="nav-item nav-item dropdown position-lg-static me-lg-3">
							<a class="nav-link" href="#" role="button"
							data-bs-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> Exhibition </a>
						</li>
						<!--리뷰-->
						<li class="nav-item nav-item dropdown position-static me-lg-3">
							<a class="nav-link" href="#" role="button"
							data-bs-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> Review </a>
						</li>
						<!--회원가-->
						<li class="nav-item dropdown me-lg-3"><a
							class="nav-link active" data-bs-auto-close="outside" href="#"
							role="button" aria-haspopup="true" aria-expanded="false">Sign
								Up </a></li>
						<!--로그인-->
						<li class="nav-item"><a class="nav-link"
							href="demo-shop.html"> Sign In </a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>

	<!--Main content-->
	<main>
		<!--page-hero-->
		<section class="bg-white position-relative">
			<div
				class="bg-pattern text-light w-100 h-100 start-0 top-0 position-absolute"></div>
			<div
				class="bg-gradientwhite flip-y w-50 h-100 start-50 top-0 translate-middle-x position-absolute"></div>
			<div
				class="container pt-11 pt-lg-14 pb-9 pb-lg-11 position-relative z-index-1">
				<div class="row align-items-center justify-content-center">

					<div class=" col-xl-4 col-lg-5 col-md-6 col-sm-8 z-index-2">

						<h2 class="mb-1 display-6">Terms & Conditions</h2>
						<p class="mb-4 text-muted">To get started, Please signup with
							details...</p>
						<div class="position-relative">

							<div class="wrap">
								<div class="logo">
									<h1>JUN</h1>
								</div>
								<div class="contents">
									<form action="/" method="POST" id="form__wrap">
										<div class="terms__check__all">
											<input type="checkbox" name="checkAll" id="checkAll" " /> <label
												for="checkAll">JUN 이용약관, 개인정보 수집 및
												이용, 프로모션 정보 수신(선택)에<br />모두 동의합니다.
											</label>
										</div>
										<ul class="terms__list">
											<li class="terms__box">
												<div class="input__check">
													<input type="checkbox" name="agreement" id="termsOfService"
														value="termsOfService" required /> <label
														for="termsOfService" class="required">JUN
														이용약관 동의</label>
												</div>
												<div class="terms__content">여러분을 환영합니다. JUN 서비스 및
													제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 JUN 서비스의 이용과 관련하여
													JUN 서비스를 제공하는 JUN 주식회사(이하 ‘JUN’)와 이를 이용하는 JUN 서비스 회원(이하
													‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 JUN 서비스 이용에 도움이 될 수 있는
													유익한 정보를 포함하고 있습니다. JUN 서비스를 이용하시거나 JUN 서비스 회원으로 가입하실 경우
													여러분은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐
													주시기 바랍니다.</div>
											</li>
											<li class="terms__box">
												<div class="input__check">
													<input type="checkbox" name="agreement" id="privacyPolicy"
														value="privacyPolicy" required /> <label
														for="privacyPolicy" class="required">개인정보
														수집 및 이용 동의</label>
												</div>
												<div class="terms__content">개인정보보호법에 따라 JUN에 회원가입
													신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간,
													동의 거부권 및 동의 거부 시 불이익에 관한 사항을 안내 드리오니 자세히 읽은 후 동의하여 주시기
													바랍니다.1. 수집하는 개인정보 이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 네이버
													서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화
													혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, 네이버는 서비스 이용을 위해 필요한 최소한의
													개인정보를 수집합니다.</div>
											</li>
											<li class="terms__box">
												<div class="input__check">
													<input type="checkbox" name="agreement"
														id="allowPromotions" value="allowPromotions" />
													<label for="allowPromotions">프로모션 정보 수신 동의</label>
												</div>
												<div class="terms__content">JUN에서 제공하는 이벤트/혜택 등 다양한
													정보를 휴대전화(JUN앱 알림 또는 문자), 이메일로 받아보실 수 있습니다. 일부 서비스(별도 회원 체계로
													운영하거나 JUN 가입 이후 추가 가입하여 이용하는 서비스 등)의 경우, 개별 서비스에 대해 별도 수신
													동의를 받을 수 있으며, 이때에도 수신 동의에 대해 별도로 안내하고 동의를 받습니다.</div>
											</li>
										</ul>
										<button type="submit" class="next-button" disabled>확인</button>
									</form>
								</div>
							</div>

							<!--Divider-->
							<div class="d-flex align-items-center py-3">
								<span class="flex-grow-1 border-bottom pt-1"></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>


	<!--footer-->
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
		<div class="container pt-9 pt-lg-11 pb-7 position-relative z-index-1">
			<div class="row mb-7">
				<div class="col-md-4 mb-5 mb-md-0 text-md-center order-md-2">
					<a href="index.html"><img
						src="/resources/img/logo/logo-white.svg"
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
			<hr class="my-5 my-lg-7">
			<div class="row align-items-center">
				<div class="col-md-8 order-md-last mb-3 mb-md-0">
					<div class="d-flex flex-wrap justify-content-md-end me-n4">
						<a href="#"
							class="small text-muted me-4 link-hover-underline my-2 block">Home</a>
						<a href="#!"
							class="small text-muted me-4 link-hover-underline my-2 block">Exhibition</a>
						<a href="#!"
							class="small text-muted me-4 link-hover-underline my-2 block">Review</a>
						<a href="CustomerChangeInfo.do"
							class="small text-muted me-4 link-hover-underline my-2 block">Setting</a>
					</div>
				</div>
				<div class="col-md-4 order-md-1 small">
					<span class="d-block my-2 lh-sm text-muted">© Copyright <script>
						document.write(new Date().getFullYear())
					</script>. Assan
					</span>
				</div>
			</div>
		</div>
	</footer>
	<!--./footer-->


	<!-- begin Back to Top button -->
	<a href="#" class="toTop"> <svg xmlns='http://www.w3.org/2000/svg'
			viewBox='0 0 13 9' class="align-middle flip-y" width="13" height="9">
                <path fill='currentColor'
				d="M12.25 2.30062L10.8988 0.949371L6.5 5.33854L2.10125 0.949371L0.75 2.30062L6.5 8.05062L12.25 2.30062Z">
                </path>
            </svg>
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

<!--Select scripts-->
<script src="/resources/vendor/node_modules/js/choices.min.js?ver=2"></script>
<script>
    var cSelect = document.querySelectorAll("[data-choices]");
    cSelect.forEach(el => {
      const t = {
        ...el.dataset.choices ? JSON.parse(el.dataset.choices) : {}, ...{
          classNames: {
            containerInner: el.className,
            input: "form-control",
            inputCloned: "form-control-sm",
            listDropdown: "dropdown-menu",
            itemChoice: "dropdown-item",
            activeState: "show",
            selectedState: "active"
          }
        }
      }
      new Choices(el, t)
    }
    );
  </script>

</html>
