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
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&family=Source+Serif+Pro:ital@0;1&display=swap"
	rel="stylesheet">
<!-- Main CSS -->
<link href="/resources/css/theme.min.css" rel="stylesheet">

<title>Assan 4</title>
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
				<!--우측 검색 아이콘-->
				<div
					class="d-flex align-items-center navbar-no-collapse-items order-lg-last">
					<!--//-->
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
						<!--마이페이지-->
						<li class="nav-item dropdown me-lg-3"><a
							class="nav-link active" data-bs-auto-close="outside" href="#"
							role="button" aria-haspopup="true" aria-expanded="false">Sign
								Up </a>
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

						<h2 class="mb-1 display-6">Hello!</h2>
						<p class="mb-4 text-muted">To get started, Please signup with
							details...</p>
						<div class="position-relative">
							<div>
								

									<!--input-with-icon-->
									<div class="input-icon-group mb-3">
										<span class="input-icon"> <i class="bx bx-user"></i>
										</span> <input type="text" class="form-control" required
											id="signUpName" autofocus placeholder="Your full name">
									</div>
									

									<div class="input-icon-group mb-3">
										<span class="input-icon"> <i class="bx bx-envelope"></i>
										</span>
										 <select autocomplete="false" id="profile_gender"
											class="form-control" data-choices='{"searchEnabled":false}'>
											<Option>Male</Option>
											<Option selected>Female</Option>
											<Option>Preffer not to say</Option>
										</select>
									</div>
									<!--  <label for="gender">gender
                                            </label> -->

									<!--  <select class="gendernum">
                                            <option value="man">man</option>
                                            <option value="women">women</option>
                                            </select> -->
									<!-- <input type="radio" name="gender" required id="signUpgender" 
                                                value="man">man
                                        	<input type="radio" name="gender" required id="signUpgender"
                                        		value="women">women  -->
							</div>
							<div class="input-icon-group mb-3">
								<span class="input-icon"> <i class="bx bx-user"></i>
								</span>
								<!--  <select class="size num">
                                            <option value="1" selected>010</option>
                                            
                                            </select> -->
								<input type="text" class="form-control" required id="signUpph"
									autofocus placeholder="Your PhoneNumber">

							</div>
							<div class="input-icon-group mb-3">
								<span class="input-icon"> <i class="bx bx-user"></i>
								</span> <input type="text" class="form-control" required id="signUpid"
									autofocus placeholder="Your id">


							</div>

							<!--input-with-icon-->
							<div class="input-icon-group mb-3">
								<span class="input-icon"> <i class="bx bx-envelope"></i>
								</span> <input type="email" class="form-control" required
									id="signUpMail" placeholder="Your email address">
							</div>
							<div class="input-icon-group mb-3">
								<span class="input-icon"> <i class="bx bx-user"></i>
								</span> <input type="text" class="form-control" required id="signUpage"
									autofocus placeholder="Your age">
							</div>
							<div class="input-icon-group mb-3">
										<span class="input-icon"> <i class="bx bx-envelope"></i>
										</span>
										 <select autocomplete="false" id="flag"
											class="form-control" data-choices='{"searchEnabled":false}'>
											<Option>C</Option>
											<Option selected>M</Option>
											
										</select>
									</div>
							<!--input-with-icon-->
							<div class="input-icon-group mb-3">
								<span class="input-icon"> <i class="bx bx-lock-open"></i>
								</span> <input type="password" class="form-control" required
									id="signUpPassword" placeholder="Enter password">
							</div>
							<!--input-with-icon-->
							<div class="input-icon-group mb-3">
								<span class="input-icon"> <i class="bx bx-lock-open"></i>
								</span><input type="password" class="form-control" required
									id="signUpConfirmPassword" placeholder="Confirm password">
							</div>
							<!--Checkbox-->
							<div class="mb-3 d-flex justify-content-between">
								<div class="form-check">
									<input class="form-check-input" required type="checkbox"
										value="" id="flexCheckDefault"> <label
										class="form-check-label small text-muted"
										for="flexCheckDefault"> i agree to <a href="#!"
										class="fw-semibold link-decoration">Terms & conditions</a>
									</label>
								</div>
							</div>

							<div class="d-grid">
								<button class="btn btn-dark" type="submit">Sign Up</button>
							</div>
							

							<!---->
							<p class="pt-3 small text-muted">
								Already have an account? <a href="page-account-signin.html"
									class="ms-2 text-dark fw-semibold link-decoration">Sign in</a>
							</p>
							<!--Divider-->
							<div class="d-flex align-items-center py-3">
								<span class="flex-grow-1 border-bottom pt-1"></span>
								<!-- <span
                                            class="d-inline-flex flex-center lh-1 width-2x height-2x rounded-circle bg-white text-mono">or</span> -->
								<span class="flex-grow-1 border-bottom pt-1"></span>
							</div>


							
						</div>
					</div>
				</div>
			</div>
			
			
		</section>
	</main>


	<!--Footer start-->
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
						<a href="demo-shop.html"
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


	<!-- begin Back to Top button -->
	<a href="#" class="toTop"> <svg xmlns='http://www.w3.org/2000/svg'
			viewBox='0 0 13 9' class="align-middle flip-y" width="13" height="9">
                <path fill='currentColor'
				d="M12.25 2.30062L10.8988 0.949371L6.5 5.33854L2.10125 0.949371L0.75 2.30062L6.5 8.05062L12.25 2.30062Z">
                </path>
            </svg>
	</a>
	<!-- scripts -->
	<script src="/resources/js/theme.bundle.js"></script>
</body>

</html>
