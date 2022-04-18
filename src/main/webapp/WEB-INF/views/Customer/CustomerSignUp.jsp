<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	
}else{
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
System.out.println("세션연결 성공:"+userId);
System.out.println("세션연결 성공:"+userName);
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
// LogOut.jsp로 이동
// 회원가입은 세션이 있으면 못들어가게 Redirect 
response.sendRedirect("../LogOut.do");

}
%>
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

<title>Customer Sign Up</title>

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
	
	<jsp:include page="/header.jsp" />

	<!--Main content-->
	<main>
		<!--page-hero-->
		<section class="bg-white position-relative">
			<div class="container pt-11 pt-lg-14 pb-9 pb-lg-11 position-relative z-index-1">
				<div class="row align-items-center justify-content-center">
					<div class=" col-xl-4 col-lg-5 col-md-6 col-sm-8 z-index-2">

						<h2 class="mb-1 display-6">Customer Sign Up</h2>
						<p class="mb-4 text-muted">To get started, Please signup with
							details...</p>

						<div class="position-relative">
							<form action="/customer/customerInsert.do" method="get">
							
								<!-- 아이디 -->
								<div class="input-icon-group mb-3">
									<span class="input-icon"> <i class="bx bx-id-card"></i>
									</span> <input type="text" class="form-control" required id="signUpid"
										name="customer_id" autofocus placeholder="Your login id">
								</div>

								<!-- 비밀번호 입력 -->
								<div class="input-icon-group mb-3">
									<span class="input-icon"> <i class="bx bx-lock-open"></i>
									</span> <input type="password" class="form-control" required
										name="customer_password" id="signUpPassword"
										placeholder="Enter password">
								</div>

								 <!-- 비밀번호 확인 -->
								 <div class="input-icon-group mb-3">
									<span class="input-icon"> <i class="bx bx-lock-open"></i>
									</span><input type="password" class="form-control" required
										id="signUpConfirmPassword" placeholder="Confirm password">
								</div>

								<!-- 이름 -->
								<div class="input-icon-group mb-3">
									<span class="input-icon"> <i class="bx bx-user"></i>
									</span> <input type="text" class="form-control" required
										name="customer_name" id="signUpName" autofocus
										placeholder="Your full name">
								</div>

								<!-- 전화번호 -->
								<div class="input-icon-group mb-3">
									<span class="input-icon"> <i class="bx bx-mobile"></i>
									</span> <input type="text" class="form-control" required
										id="signUpph" name="customer_ph" autofocus
										placeholder="Your PhoneNumber">
								</div>
								
								<!-- 이메일 -->
								<div class="input-icon-group mb-3">
									<span class="input-icon"> <i class="bx bx-envelope"></i>
									</span> <input type="email" class="form-control" required
										name="customer_email" id="signUpMail"
										placeholder="Your email address">
								</div>
								
								<!-- 성별 -->
								<div class="input-icon-group mb-3">
									<span class="input-icon"> <i class="bx bx-male-female"></i>
									</span> <select autocomplete="false" id="profile_gender"
										name="customer_gender" class="form-control"
										data-choices='{"searchEnabled":false}'>
										<option selected disabled>Gender</option>
										<option>M</Option>
										<option>F</Option>
									</select>
								</div>
								
								<!-- 나이 -->
								 <div class="input-icon-group mb-3">
									<span class="input-icon"> <i class="bx bx-calendar"></i>
									</span> <input type="number" class="form-control" required
										id="signUpage" name="customer_age" autofocus
										placeholder="Your age">
								</div> 

								<!-- 회원속성  -->
								<div class="input-icon-group mb-3">
									<span class="input-icon"> <i class="bx bx-envelope"></i>
									</span> <select autocomplete="false" id="flag" class="form-control"
										name="customer_flag" data-choices='{"searchEnabled":false}'>
										<Option>C</Option>
										<Option selected>M</Option>
									</select>
								</div>

								<!-- 회원가입 마치기 -->
								<div class="d-grid">
									<button class="btn btn-primary" type="submit">Sign Up</button>
								</div>
							</form>

							<!-- 로그인 버튼 -->
							<p class="pt-3 small text-muted">
								Already have an account? <a href="CustomerLogin.do"
									class="ms-2 text-dark fw-semibold link-decoration">Sign in</a>
							</p>

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


	<jsp:include page="/footer.jsp" />


</body>

<!-- scripts -->
<script src="/resources/js/theme.bundle.js"></script>
<script src="/resources/vendor/node_modules/js/gsap.min.js"></script>

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
