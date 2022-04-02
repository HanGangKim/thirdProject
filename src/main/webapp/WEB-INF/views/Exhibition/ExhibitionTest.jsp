<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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