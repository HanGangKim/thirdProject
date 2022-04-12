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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:forEach items="${reviewList}" var="vo">
	<table border=1>
		<tr>
				<td>${vo.exhibition_id}</td>
				<td>${vo.exhibition_title}</td>
				<td>${vo.exhibition_start_date}</td>
				<td>${vo.exhibition_end_date}</td>
				<td>${vo.exhibition_image}</td>
				<td>${vo.exhibition_location}</td>
				<td>${vo.review_id}</td>
				<td>${vo.review_title}</td>
				<td>${vo.review_contents}</td>
				<td>${vo.review_date}</td>
				<td>${vo.review_star_score}</td>
		</tr>
	</table>
	</c:forEach>
	
</body>
</html>