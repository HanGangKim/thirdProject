<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%
Object userId = session.getAttribute("userId");
Object userName = session.getAttribute("userName");
Object userPh = session.getAttribute("userPh");
Object userEmail = session.getAttribute("userEmail");
Object userGender = session.getAttribute("userGender");
Object userAge = session.getAttribute("userAge");
Object userPass = session.getAttribute("userPass");
Object userRegnum = session.getAttribute("userRegnum");

// 세션 연결
if (session.getAttribute("userId") == null) {
// 세션 연결에 실패하면 null	
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
System.out.println("세션연결 실패:"+userId);
System.out.println("세션연결 실패:"+userName);
System.out.println("세션연결 실패:"+userRegnum);
System.out.println("세션연결 실패:"+userPh);
System.out.println("세션연결 실패:"+userEmail);
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");

}else{
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
System.out.println("세션연결 성공:"+userId);
System.out.println("세션연결 성공:"+userName);
System.out.println("세션연결 성공:"+userRegnum);
System.out.println("세션연결 성공:"+userPh);
System.out.println("세션연결 성공:"+userEmail);
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");

}
%>
<!doctype html>
<html lang="en">
<!--정보수정-->
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

<!--Flatpickr-->
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/flatpickr.min.css">

<!--File uploader-->
<link href="https://unpkg.com/filepond/dist/filepond.css"
	rel="stylesheet" />
<link
	href="https://unpkg.com/filepond-plugin-file-poster/dist/filepond-plugin-file-poster.css"
	rel="stylesheet">
<link
	href="https://unpkg.com/filepond-plugin-image-preview/dist/filepond-plugin-image-preview.css"
	rel="stylesheet">

<title>My Setting</title>
</head>

<body>
	<!--Preloader Spinner-->
	<div class="spinner-loader bg-gradient-secondary text-white">
		<div class="spinner-border text-primary" role="status"></div>
		<span class="small d-block ms-2">Loading...</span>
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
								<li class="breadcrumb-item active">Setting</li>
							</ol>
						</nav>
						<h1 class="mb-0 display-3">Setting</h1>
					</div>
				</div>
				<!--/.row-->
			</div>
		</section>

		<section class="position-relative">
			<div class="container position-relative">
				<div class="overflow-hidden">
					<!--Profile info header-->
					<div class="position-relative pt-5 pb-9 pb-lg-11">
						<div class="row">
							<div class="col-lg-9 mx-auto">
								<div class="pt-5 d-flex flex-column h-100">
									<div class="card shadow p-3 mb-3">
										<h5 class="mb-4">Edit profile</h5>
										<form action = "/company/CompanyUpdateInfo.do",autocomplete="false" method="get">
											<div class="row align-items-center">
												<div class="col-md-12">
													<div class="row">
														<div class="col-md-6 mb-4">
															<div
																class="filepond--root width-15x height-15x filepond--hopper"
																id="update_profile"
																data-style-panel-layout="compact circle"
																data-style-button-remove-item-position="left bottom"
																data-style-button-process-item-position="right bottom"
																data-style-load-indicator-position="center bottom"
																data-style-progress-indicator-position="right bottom"
																data-style-button-remove-item-align="false"
																style="height: 160px;">
																<input class="filepond--browser" type="file"
																	id="filepond--browser-ljwqc5fiu"
																	aria-controls="filepond--assistant-ljwqc5fiu"
																	aria-labelledby="filepond--drop-label-ljwqc5fiu"
																	name="filepond"><a class="filepond--credits"
																	aria-hidden="true" href="https://pqina.nl/"
																	target="_blank" rel="noopener noreferrer"
																	style="transform: translateY(160px);">Powered by
																	PQINA</a>
																<div class="filepond--drop-label"
																	style="transform: translate3d(0px, 0px, 0px); opacity: 1;">
																	<label for="filepond--browser-ljwqc5fiu"
																		id="filepond--drop-label-ljwqc5fiu" aria-hidden="true">Drag
																		&amp; Drop picture or Browse</label>
																</div>
																<div class="filepond--list-scroller"
																	style="transform: translate3d(0px, 0px, 0px);">
																	<ul class="filepond--list" role="list"></ul>
																</div>
																<div class="filepond--panel filepond--panel-root"
																	data-scalable="false">
																	<div class="filepond--panel-top filepond--panel-root"></div>
																	<div
																		class="filepond--panel-center filepond--panel-root"
																		style="transform: translate3d(0px, 0px, 0px) scale3d(1, 1.6, 1);"></div>
																	<div
																		class="filepond--panel-bottom filepond--panel-root"
																		style="transform: translate3d(0px, 160px, 0px);"></div>
																</div>
																<span class="filepond--assistant"
																	id="filepond--assistant-ljwqc5fiu" role="status"
																	aria-live="polite" aria-relevant="additions"></span>
																<div class="filepond--drip"></div>
																<fieldset class="filepond--data"></fieldset>
															</div>
														</div>
													</div>
												</div>

												<!--이름-->
												<div class="col-md-6 mb-3">
													<label class="form-label" for="profile_name">Name</label> <input
														class="form-control" id="profile_name" name="company_name"type="text"
														value="<%=userName%>">
												</div>
												<!--아이디-->
												<div class="col-md-6 mb-3">
													<label class="form-label" for="profile_com">Id</label> <input
														type="text" class="form-control" id="profile_com" name="company_id"
														value="<%=userId%>" readonly="readonly">
												</div>

												<!-- 회사번호  -->
												<div class="col-md-6 mb-3">
													<label class="form-label" for="profile_phon">Phone</label>
													<input type="text" id="profile_phon" name="company_ph"
														value="<%=userPh %>" class="form-control">
												</div>
												
												<!--이메일-->
												<div class="col-md-6 mb-3">
													<label class="form-label" for="profile_gender">E-mail</label>
													<input class="form-control" type="email" name="company_email"id="profile_email"
														value="<%=userEmail%>">
												</div>
												<!--사업자 등록번호-->
												<div class="col-md-6 mb-3">
													<label class="form-label" for="profile_dob">
														사업자 등록번호</label> <input type="text" id="profile_dob"
														class="form-control" name="company_regnum" value="<%=userRegnum%>">
												</div>
												
												<!--주소-->
												<!-- <div class="col-12">
													<label for="profile_address" class="form-label">Address</label>
													<input type="text" id="profile_address"
														class="form-control"
														value="1355 Market St, Suite 900 San Francisco CA 94103">
												</div>  -->
												
											</div>
											<hr class="mt-5 mb-3">
											<!--저장 버튼-->
											<div class="text-end">
												<button type="submit" class="btn btn-primary">Save
													Profile</button>
											</div>
										</form>
									</div>

									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

	</main>

<!--Footer Start-->
        <footer id="footer" class="overflow-hidden position-relative bg-dark text-white">
          <!--Divider-->
          <svg class="position-absolute start-0 bottom-0 text-gray-800 h-40" preserveAspectRatio="none" width="100%" height="250"
              viewBox="0 0 1200 250" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path opacity="0.1" fill-rule="evenodd" clip-rule="evenodd"
                  d="M0 62.5L22 46.875C44 31.25 89 0 133 0C178 0 222 31.25 267 72.9167C311 114.583 356 166.667 400 187.5C444 208.333 489 197.917 533 182.292C578 166.667 622 145.833 667 114.583C711 83.3333 756 41.6667 800 26.0417C844 10.4167 889 20.8333 933 62.5C978 104.167 1022 177.083 1067 208.333C1111 239.583 1156 229.167 1178 223.958L1200 218.75V250H1178C1156 250 1111 250 1067 250C1022 250 978 250 933 250C889 250 844 250 800 250C756 250 711 250 667 250C622 250 578 250 533 250C489 250 444 250 400 250C356 250 311 250 267 250C222 250 178 250 133 250C89 250 44 250 22 250H0V62.5Z"
                  fill="currentColor" />
              <path opacity="0.1" fill-rule="evenodd" clip-rule="evenodd"
                  d="M0 93.667L24.8889 87.4756C49.7778 82.8321 99.5556 71.9971 149.333 93.667C200.889 113.789 250.667 166.416 300.444 186.538C350.222 208.208 400 197.373 449.778 171.06C499.556 144.746 549.333 102.954 600.889 76.6407C650.667 50.3272 700.444 41.0401 750.222 61.1622C800 82.8321 849.778 135.459 899.556 129.268C949.333 124.624 1000.89 61.1622 1050.67 50.3272C1100.44 41.0401 1150.22 82.8321 1175.11 102.954L1200 124.624V250H1175.11C1150.22 250 1100.44 250 1050.67 250C1000.89 250 949.333 250 899.556 250C849.778 250 800 250 750.222 250C700.444 250 650.667 250 600.889 250C549.333 250 499.556 250 449.778 250C400 250 350.222 250 300.444 250C250.667 250 200.889 250 149.333 250C99.5556 250 49.7778 250 24.8889 250H0V93.667Z"
                  fill="currentColor" />
          </svg>
          <div class="container pt-9 pt-lg-11 pb-5 pb-lg-7 position-relative z-index-1">
              <div class="row mb-5 mb-lg-7">
                  <div class="col-md-4 mb-5 mb-md-0 text-md-center order-md-2">
                      <a href="index.html"><img src="/resources/img/logo/logo-white.svg"
                              class="width-10x d-block h-auto mx-md-auto" alt=""></a>
                  </div>
                  <div class="col-md-4 order-md-1 mb-3 mb-md-0">
                      <a href="mailto:mail@domain.com" class="fs-4 link-hover-underline">mail@domain.com</a>
                  </div>
                  <div class="col-md-4 text-md-end order-md-3">
                      <a href="mailto:mail@domain.com" class="fs-4 link-hover-underline">+01 123-4567-890</a>
                  </div>
              </div>
              <div class="row align-items-center">
                  <div class="col-md-8 order-md-last mb-3 mb-md-0">
                      <div class="d-flex flex-wrap justify-content-md-end me-n4">
                          <a href="#!" class="small text-muted me-4 link-hover-underline my-2 block">Properties</a>
                          <a href="#!" class="small text-muted me-4 link-hover-underline my-2 block">Careers</a>
                          <a href="#!" class="small text-muted me-4 link-hover-underline my-2 block">Company</a>
                          <a href="#!" class="small text-muted me-4 link-hover-underline my-2 block">Privacy policy</a>
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


</body>

<!-- scripts -->
<script src="/resources/js/theme.bundle.js"></script>
<script src="/resources/vendor/node_modules/js/gsap.min.js"></script>
<script src="/resources/vendor/node_modules/js/cursor.js"></script>

<!--Page scripts-->
<script src="/resources/vendor/node_modules/js/flatpickr.min.js"></script>

<!--Select scripts-->
<script src="/resources/vendor/node_modules/js/choices.min.js"></script>

<!--Profile photo upload-->
<script
	src="https://unpkg.com/filepond-plugin-image-preview/dist/filepond-plugin-image-preview.js"></script>
<script
	src="https://unpkg.com/filepond-plugin-file-poster/dist/filepond-plugin-file-poster.js"></script>
<script src="https://unpkg.com/filepond/dist/filepond.js"></script>


</html>
