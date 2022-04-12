<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>

<style>
* {
	font-family: 'Spoqa Han Sans Neo', 'sans-serif';
}
</style> -->
<title>크롤링 데이터 가져오기</title>
</head>
<body>

	<table border=1>

		<tr>
			<th>인덱스</th>
			<th>제목</th>
			<th>시작날짜</th>
			<th>종료날짜</th>
			<th>기간</th>
			<th>이미지경로</th>
			<th>장소</th>
			<th>가격</th>

		</tr>
		<tr>
			<td>${vo.exhibition_id}</td>
			<td>${vo.exhibition_title}</td>
			<td>${vo.exhibition_start_date}</td>
			<td>${vo.exhibition_end_date}</td>
			<td>${vo.exhibition_total_date}</td>
			<td>${vo.exhibition_image}</td>
			<td>${vo.exhibition_location}</td>
			<td>${vo.exhibition_price}</td>

		</tr>

	</table>

	<br>
	<hr>
	<br>

	<table border=1>

		<tr>
			<th>인덱스</th>
			<th>제목</th>
			<th>시작날짜</th>
			<th>종료날짜</th>
			<th>기간</th>
			<th>이미지경로</th>
			<th>장소</th>
			<th>가격</th>

		</tr>
		<tr>
			<td>${vo.exhibition_id}</td>
			<td>${vo.exhibition_title}</td>
			<td>${vo.exhibition_start_date}</td>
			<td>${vo.exhibition_end_date}</td>
			<td>${vo.exhibition_total_date}</td>
			<td>${vo.exhibition_image}</td>
			<td>${vo.exhibition_location}</td>
			<td>${vo.exhibition_price}</td>

		</tr>

	</table>

</body>
</html>