<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
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
	System.out.println("세션연결 실패:" + userId);
	System.out.println("세션연결 실패:" + userName);
	System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
	//LogOut.jsp로 이동
	response.sendRedirect("../LogOut.do");
} else {
	System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
	System.out.println("세션연결 성공:" + userId);
	System.out.println("세션연결 성공:" + userName);
	System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");

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

<title>Fiennale</title>

</head>

<body>

	<jsp:include page="/header.jsp" />
	
	<!--Main content-->
	<main class="main-content " id="main-content">
		<section class="position-relative ">
			<div class="container col-11 pb-9 pt-12 pb-lg-16 ">
				<div class="row pt-lg-5 pb-5 justify-content-center text-center">
					<div class="col-xl-4">
						<div class="width-8x height-8x rounded-circle position-relative bg-success text-white flex-center mb-5">
							<i class="bx bx-check lh-1 display-5 fw-normal"></i>
						</div>
						<h4 class="display-4 mb-3">Find Success !</h4>
						<p class="mb-5 lead mx-auto">자세한 비밀번호는 이메일 수신함을 확인해주세요.</p>
						<p class="mb-0 lead mx-auto fs-6">${vo.customer_id}님의 비밀번호는</p>
						<p class="mb-5 lead mx-auto fs-6" id='passwordmasking'>${vo.customer_password}</p>
						<div class="mx-auto">
							<a href="/LandingLogin.do" class="btn btn-primary mb-2 d-grid">Sign In</a>
							<a href="/NoneMemberMain.do" class="btn btn-outline-secondary  d-grid mb-2">Go to Main</a>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>


	<jsp:include page="/footer.jsp" />

</body>

<script>

// var name = ${vo.customer_password};



// function(str){
	var name = document.getElementById('passwordmasking').innerHTML;
	let maskingStr;
	
// 	if(this.checkNull(name) == true){ 
// 		return name;
// 	}
	
	if(name.length < 3){
		maskingStr = name.replace(/(?<=.{1})./gi, "*");
	}else {
		maskingStr = name.replace(/(?<=.{2})./gi, "*"); 
	}

// window.onload = function(){	
	document.getElementById('passwordmasking').innerHTML = maskingStr+" 입니다.";
	
// }	



</script>
</html>