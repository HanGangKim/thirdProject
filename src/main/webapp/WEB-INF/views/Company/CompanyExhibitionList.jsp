<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%request.setCharacterEncoding("UTF-8");%>
<%
Object companyId = session.getAttribute("companyId");
Object companyName = session.getAttribute("companyName");
Object companyPh = session.getAttribute("companyPh");
Object companyEmail = session.getAttribute("companyEmail");
Object companyGender = session.getAttribute("companyGender");
Object companyAge = session.getAttribute("companyAge");
Object companyPass = session.getAttribute("companyPass");
Object companyRegnum = session.getAttribute("companyRegnum");

// 세션 연결
if (session.getAttribute("companyId") == null) {
// 세션 연결에 실패하면 null	
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
System.out.println("세션연결 실패:"+companyId);
System.out.println("세션연결 실패:"+companyName);
System.out.println("세션연결 실패:"+companyRegnum);
System.out.println("세션연결 실패:"+companyPh);
System.out.println("세션연결 실패:"+companyEmail);
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");

}else{
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
System.out.println("세션연결 성공:"+companyId);
System.out.println("세션연결 성공:"+companyName);
System.out.println("세션연결 성공:"+companyRegnum);
System.out.println("세션연결 성공:"+companyPh);
System.out.println("세션연결 성공:"+companyEmail);
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
<!-- Main CSS -->
<link href="/resources/css/theme-shop.min.css" rel="stylesheet">

<title><%=companyName %> - Exhibition</title>
</head>


<body>
	
	<jsp:include page="/headerCompany.jsp" />


	<!--Main content start-->	
	<main>
		<!-- 페이지 헤더 -->
		<section id="page-header" class="position-relative bg-dark text-white overflow-hidden">
			<div class="container col-11 pt-12 pb-10">
				<div class="row pt-lg-7">
					<div class="col-lg-7">
						<h1 class="mb-2 display-4">Exhibition</h1>
						<p class="lead mb-0 text-muted"><%=companyName %></p>
					</div>
				</div>
			</div>
		</section>
		<!-- ./페이지 헤더 -->

		<!-- 내용 -->
		<section class="position-relative hr-linear-bottom bg-white">
			<div class="container pt-10 col-11 position-relative py-lg-11">
				<c:forEach items="${CompanyExhibitionList}" var="vo">
					<!-- 카드 -->
					<div class="row position-relative overflow-hidden hover-lift hover-shadow-lg shadow rounded-4 border flex-sm-row mb-6 align-items-center">
						<div class="col-md-6 col-lg-5 p-0 p-lg-0">
							<div class="overflow-hidden">
								<img src="/resources/img/960x900/1.jpg" class="img-fluid img-zoom">
							</div>
						</div>
						<div class="col-sm-7 p-sm-4 col-12 col-lg-6 ms-sm-7 p-5">
							<!-- 업체 id -->
							<div class="d-flex mb-2 align-items-center">
<!-- 								<span class="text-muted me-3">Title</span> -->
<%-- 								<h4 class="text-truncate">${vo.exhibition_title}</h4> --%>
								<h4 class="text-truncate"><%=companyName %></h4>
							</div>
							
							<!-- 업체 id -->
							<div class="d-flex mb-2 align-items-center">
								<span class="text-muted me-3">Company Id</span> 
								<strong>${vo.company_id}</strong>
							</div>
							<!-- 전시 id -->
							<div class="d-flex mb-2 align-items-center">
								<span class="text-muted me-3">Exhibition Id</span> 
								<strong>${vo.exhibition_id}</strong>
							</div>
							<!-- 전시 제목 -->
							<div class="d-flex mb-2 align-items-center">
								<span class="text-muted me-3">Title</span> 
								<strong>${vo.exhibition_title}</strong>
							</div>
							<!-- 전시 내용 -->
<!-- 							<div class="d-flex mb-2 align-items-center"> -->
<!-- 								<span class="text-muted me-3">Contents</span>  -->
<%-- 								<strong class="text-truncate">${vo.exhibition_contents}</strong> --%>
<!-- 							</div> -->
							<!-- 전시 기간 -->
							<div class="d-flex mb-2 align-items-center">
								<span class="text-muted me-3">Date</span> 
								<strong>${vo.exhibition_total_date}</strong>
							</div>
							<!-- 전시 금액 -->
							<div class="d-flex mb-2 align-items-center">
								<span class="text-muted me-3">Price</span> 
								<strong>${vo.exhibition_price}</strong>
							</div>
							<!-- 승인 상태 -->
							<div class="d-flex mb-5 align-items-center">
								<span class="text-muted me-3">Flag</span> 
								<strong>${vo.exhibition_flag}</strong>
							</div>
							<!-- 버튼 div -->
							<div class="d-flex pb-4 pb-md-0 justify-content-end">
								<!-- 수정버튼 -->
									<div class="me-2">
								<form action="/exhibition/CompanyExhibitionDetail.do" method="post">
										<input name="company_id" value="${vo.company_id}"
											hidden="hidden"> <input name="exhibition_id"
											value="${vo.exhibition_id}" hidden="hidden">
										<button type="submit" class="btn btn-outline-dark">수정</button>
								</form>
									</div>

								<!-- 삭제버튼 -->
									<div class="">
								<form action="/exhibition/exhibitionCompanyExhibitionDelete.do" method="post">
										<input name="company_id" value="${vo.company_id}"
											hidden="hidden"> <input name="exhibition_id"
											value="${vo.exhibition_id}" hidden="hidden">
										<button type="submit" class="btn btn-dark ">삭제</button>
								</form>
									</div>
							</div>
							<!-- ./ 버튼 div -->
						</div>
					</div>
					<!-- ./카드 -->
				</c:forEach>

				<!-- 버튼 -->
				<div class="d-flex flex-column flex-sm-row justify-content-sm-between align-items-center">
					<div class="mb-3 mb-sm-0">
<!-- 						<a href="/company/CompanyMain.do" class="btn btn-primary">Go MainPage</a> -->
					</div>
					<!-- 새 전시회 등록 -->
					<div class="mb-3 mb-sm-0">
						<a href="/company/CompanyExhibitionWrite.do" class="btn btn-primary">New exhibition</a>
					</div>
				</div>

			</div>
		</section>
		<!-- ./내용 -->
	</main>

	<jsp:include page="/footerCompany.jsp" />

</body>

</html>