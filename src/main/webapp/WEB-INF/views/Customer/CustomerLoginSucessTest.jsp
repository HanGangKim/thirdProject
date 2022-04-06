<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
// 세션 연결
if (session.getAttribute("userId") == null) {
	response.sendRedirect("/Customer/CustomerLogin");
}
Object id = session.getAttribute("userId");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>

<style>
* {
	font-family: 'Spoqa Han Sans Neo', 'sans-serif';
}
</style> -->
</head>
<body>

	로그인 성공
	<hr>
	${sessionScope.userId} ${sessionScope.userName}
	<br>

</body>
</html>