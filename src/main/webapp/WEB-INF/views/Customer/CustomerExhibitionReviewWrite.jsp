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
<!--리뷰작성-->

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

<!--Choices css-->
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/choices.min.css">

<title>Writing A Review</title>

<style>
#youna-box-size {
	height: 300px;
}

.choices__list--single {
	padding: 0px;
}
</style>
</head>

<body>
	

	<jsp:include page="/header.jsp" />

	<!--Main content-->
	<main>
		<!--Page header start-->
		<section class="position-relative bg-dark text-white overflow-hidden">
			<div class="container py-11 py-lg-15 position-relative">
				<div class="row align-items-center">
					<div class="col-lg-10 mx-auto text-center">
						<nav class="d-flex justify-content-center" aria-label="breadcrumb">
							<ol class="breadcrumb mb-3">
								<li class="breadcrumb-item"><a href="#!">Home</a></li>
								<li class="breadcrumb-item active">My Review</li>
							</ol>
						</nav>
						<h1 class="mb-0 display-3">My Review</h1>
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
										<h5 class="mb-4">Writing A Review</h5>

										<!-- form 태그시작  -->
										<form autocomplete="false" action="/exhibition/saveReview.do" method="post" >
											<div class="row align-items-center">
												<!--아이디-->
												<div class="col-md-6 mb-3">
													<label class="form-label" for="profile_com">Id</label> 
													<input name="customer_id" value="${param.customer_id}" required="required"
														type="text" class="form-control" id="profile_com" readonly>
												</div>
												
												<!--전시 제목-->
												<div class="col-md-6 mb-3">
													<label class="form-label" for="profile_com">Exhibition Title</label> 
													<input name="exhibition_title" value="${param.exhibition_title}" required="required"
														type="text" class="form-control" id="profile_com" readonly>
												</div>

												<!-- 넘겨줄 예매내역 ticketing_id  -->
												<input name="ticketing_id" value="${param.ticketing_id}" hidden>
						
												<!-- 넘겨줄 전시회 hidden 아이디  -->
												<input type="number" name="exhibition_id" value="${param.exhibition_id}" hidden>

												<!--리뷰 제목-->
												<div class="col-md-6 mb-3">
													<label class="form-label" for="profile_com">Review Title</label> 
													<input name="review_title" type="text" class="form-control" id="profile_com"
														placeholder="제목을 입력해주세요." required="required">
												</div>



												<div class="col-md-6 mb-3">
													<label class="form-label" for="profile_gender">Grade</label>
													<select name="review_star_score"  autocomplete="false" id="profile_gender"
														class="form-control"
														data-choices='{"searchEnabled":false}'>
														<option selected value="5.0">5.0</option>
														<option value="4.0">4.0</option>
														<option value="3.0">3.0</option>
														<option value="2.0">2.0</option>
														<option value="1.0">1.0</option>
													</select>
												</div>
												<!--내용-->
												<div class="col-12 mb-3">
													<label for="profile_address" class="form-label">Content</label>
													<textarea name="review_contents" required="required"
														id="youna-box-size" class="form-control"
														placeholder="Please enter the contents."></textarea>
												</div>	
											</div>
											<hr class="mt-5 mb-3">
											<!--저장 버튼-->
											<div class="text-end">
												<button type="submit" class="btn btn-primary">Update Review</button>
											</div>
										</form>
										<!-- form 태그 종료 -->
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





</body>

<!--Page scripts-->
<script src="/resources/vendor/node_modules/js/flatpickr.min.js"></script>
<script>
    let fpickr = document.querySelectorAll("[data-flatpickr]");
    fpickr.forEach(el => {
      const t = {
        ...el.dataset.flatpickr ? JSON.parse(el.dataset.flatpickr) : {},
      }
      new flatpickr(el, t)
    }
    );
  </script>

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
<script>

</script>

</html>