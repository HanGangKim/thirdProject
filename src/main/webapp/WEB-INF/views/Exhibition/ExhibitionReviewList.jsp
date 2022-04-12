<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
}
%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="icon" href="/resources/img/favicon.ico" type="image/ico" />

<!--Box Icons-->
<link rel="stylesheet"
	href="/resources/fonts/boxicons/css/boxicons.min.css" />

<!--Iconsmind Icons-->
<link rel="stylesheet" href="/resources/fonts/iconsmind/iconsmind.css" />

<!--Select style-->
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/choices.min.css">

<!--Swiper slider-->
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/swiper-bundle.min.css" />
	
<!-- Aos Animations CSS -->
<link href="/resources/vendor/node_modules/css/aos.css" rel="stylesheet">

<!--Google fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@100..700&family=Source+Serif+Pro:ital,wght@0,300;0,400;0,600;0,700;1,300;1,400&display=swap"
	rel="stylesheet">
	
<!-- Main CSS -->
<link href="/resources/css/theme-shop.min.css" rel="stylesheet">

<title>Review</title>
</head>

<body>
	<!--Preloader Spinner-->
	<div class="spinner-loader bg-tint-primary">
		<div class="spinner-border text-primary" role="status"></div>
		<span class="small d-block ms-2">Loading...</span>
	</div>

	<jsp:include page="/header.jsp" />
	
	
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
								<li class="breadcrumb-item active">Review</li>
							</ol>
						</nav>
						<h1 class="mb-0 display-3">Review</h1>
					</div>
				</div>
				<!--/.row-->
			</div>
		</section>

		<section class="sticky-lg-top top-0">
			<div class="container">

				<form class="position-relative z-index-1 mt-n7 px-3 pb-3 pt-3 bg-white border rounded-3">
					<div class="row mx-0 g-2 align-items-center">
						<div class="col-md-9 col-lg-10">
							<div class="position-relative">
								<input type="text" id="p_location"
									class="form-control border-0 shadow-none form-control-lg ps-4"
									placeholder="Search...">
							</div>
						</div>
						<div class="col-md-3 col-lg-2">
							<button type="submit" class="btn btn-primary btn-lg w-100">
								Search</button>
						</div>
					</div>
				</form>
				
			</div>
		</section>

		<!-- 리뷰 리스트 -->
		<section class="position-relative bg-white">
			<div class="container py-9 py-lg-11">
				<div class="row mb-5">
				
					<c:forEach items="${reviewList}" var="vo">
						<div class="col-md-6 col-lg-4">
							<!--Property-item-row-->
							<div class="card rounded-4 mb-5 " data-aos="fade-up">
							
								<div class="mb-0">
									<a href="#!" class="d-block overflow-hidden rounded-top-4">
										<img src="${vo.exhibition_image}" class="img-fluid" alt="${vo.exhibition_title}" style="width:100%;">
									</a>
								</div>
								
								<div class="card-body overflow-hidden p-4 px-lg-5 flex-grow-1">
									<a href="#!" class="text-dark d-block mb-4">
										<h4 class="text-truncate">${vo.exhibition_title}</h4>
									</a>
									<div class="row mb-lg-3">
										<div class="col-3" data-bs-toggle="tooltip"
											data-bs-placement="top" title=""
											data-bs-original-title="Bedrooms">
											<div class="d-flex align-items-center">
												<strong class="small">${vo.review_date}</strong>
											</div>
										</div>
									</div>
									
									<p class="mb-4 mb-lg-5 text-truncate">${vo.review_contents}</p>
										
									<div class="row justify-content-between justify-content-lg-start">
										<div class="col-6">
											<!--Price-->
											<h4 class="mb-0"><i class="bx bx-star me-2"></i>${vo.review_star_score}</h4>
										</div>
										<div class="col-6">
											<!--Agent-->
											<div
												class="d-flex align-items-center justify-content-end flex-shrink-0">
												<img src="/resources/img/avatar/2.jpg" alt=""
													class="flex-shrink-0 flex-shrink-0 avatar sm rounded-circle me-2 img-fluid">
												<span class="small"> {vo.customoer_id} </span>
											</div>
										</div>
									</div>
								</div>
								
							</div>
						</div>
					</c:forEach>

				</div>

				<div class="d-grid d-sm-flex justify-content-sm-center" onclick="loadMoreAjax()">
					<a class="btn btn-outline-dark rounded-pill btn-lg btn-hover-text" >
						<span class="btn-hover-label label-default">Load more</span> 
						<span class="btn-hover-label label-hover">Load more</span>
					</a>
				</div>
				<input type='hidden' id='endRow' value='8' />
				<input type='hidden' id='totalDate' value='${param.totalDate }' />
			</div>
		</section>
	</main>


	<jsp:include page="/footer.jsp" />


	<!-- begin Back to Top button -->
	<a href="#" class="toTop"> <i class="bx bxs-up-arrow"></i>
	</a>
	
</body>

<!-- scripts -->
<script src="/resources/js/theme.bundle.js"></script>
<!--Select scripts-->
<script src="/resources/vendor/node_modules/js/choices.min.js"></script>

<!-- 더보기 버튼 구현 ajax -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">

	function loadMoreAjax(){
		
		
		var endRow = $('#endRow').val();
		var showCnt = 9;
		var showEndRow =  Number(endRow) + showCnt;
		var totalDate = $('#totalDate').val();
		
		$.ajax({
			type: 'post',
			url : './ExSearchTestAjax.do',
			data : { 'endRow': showEndRow, 'totalDate':totalDate},
			success : function(list){
				
				$("#more_list").empty();
				
				$.each(list, function(index,vo){
					
					// alert(index + "  :  " +value.exhibition_title)
					
					getLoadMore(vo);
				})
				
				
				$('#endRow').val( showEndRow );
				
			},
			error : function(request, status, error){
				alert("code = "+ request.status+"\n error = " +error);
			}
		})
	}
	
	function getLoadMore(vo){
	    var str = "";
		str += '<div class="col-md-6 col-xl-4 mb-4">';
		str += '<div class="card hover-shadow overflow-hidden hover-lift card-product border-0">';
		str += '<div class="card-product-header px-5 p-4 d-block overflow-hidden position-relative text-center">';
		str += '<a href="./ExhibitionDetail.do?id=' + vo.exhibition_id + '">';
		str += '<img src="' + vo.exhibition_image + '" class="img-fluid" alt="Product" style="width:300px; height:400px;"></a></div>';
		str += '<div class="card-product-body px-4 pb-4 text-center">';
		str += '<a href="./ExhibitionDetail.do?id=' + vo.exhibition_id + '" class="h5 text-dark d-block position-relative mb-2" style="height:50px;">' + vo.exhibition_title + '</a>';
		str += '<div class="card-product-body-ovelray">';
		str += '<span class="card-product-price"> <span>' + vo.exhibition_total_date + '</span> </span>'; 
		str += '<span class="card-product-view-btn">'; 
		str += '<a href="./ExhibitionDetail.do?id=' + vo.exhibition_id + '" class="link-underline mb-1 fw-semibold text-dark">View Details</a></span></div></div></div></div>';
		
		
		$("#more_list").append(str); 
// 		alert(str);
		
	}

</script>


</html>
