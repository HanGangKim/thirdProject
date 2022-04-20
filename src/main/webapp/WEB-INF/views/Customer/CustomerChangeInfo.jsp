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
										<form action = "/customer/CustomerUpdateInfo.do",autocomplete="false" method="get">
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
														class="form-control" id="profile_name" name="customer_name"type="text"
														value="<%=userName%>">
												</div>
												<!--아이디-->
												<div class="col-md-6 mb-3">
													<label class="form-label" for="profile_com">Id</label> <input
														type="text" class="form-control" id="profile_com" name="customer_id"
														value="<%=userId%>" readonly="readonly">
												</div>

												<!--전화번호-->
												<div class="col-md-6 mb-3">
													<label class="form-label" for="profile_phon">Phone</label>
													<input type="text" id="profile_phon" name="customer_ph"
														value="<%=userPh%>" class="form-control">
												</div>
												<!--이메일-->
												<div class="col-md-6 mb-3">
													<label class="form-label" for="profile_email">Email
														address</label> <input class="form-control" type="email"
														id="profile_email" name="customer_email" value="<%=userEmail%>">
												</div>
												<!--성별-->
												<div class="col-md-6 mb-3">
													<label class="form-label" for="profile_gender">Gender</label>
													<input class="form-control" type="text" name="customer_gender"id="profile_email"
														value="<%=userGender%>">
												</div>
												<!--나이-->
												<div class="col-md-6 mb-3">
													<label class="form-label" for="profile_dob">Date of
														Age</label> <input type="text" id="profile_dob"
														class="form-control" name="customer_age" data-flatpickr value="<%=userAge%>">
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

									<!--Password card-->
									<!-- <div class="card shadow p-3">
										<h5 class="mb-4">Update Password</h5>

										<form>
											<div class="row">
												현재 비밀번호
												<div class="col-md-4 mb-3">
													<label for="update_pass_current" class="form-label">Current
														password</label> <input id="update_pass_current" type="text"
														value="<%=userPass%>" class="form-control">
												</div>
												새 비밀번호
												<div class="col-md-4 mb-3">
													<label for="update_pass_new" class="form-label">New
														password</label> <input type="text" class="form-control"
														id="update_pass_new">
												</div>
												비밀번호 확인
												<div class="col-md-4 mb-3">
													<label for="update_pass_new_confirm" class="form-label">Confirm
														new password</label> <input type="text" class="form-control"
														id="update_pass_new_confirm">
												</div>
											</div>
											<small class="help-text text-muted">비밀번호는 영문/숫자 포함
												8자리를 입력해주세요.</small>
											<div class="text-end">
												<button type="button" class="btn btn-primary">Save
													Update Password</button>
											</div>-->
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

	<jsp:include page="/footer.jsp" />

	<!-- :Back to top -->
	


	<!--cursor-->
	


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
