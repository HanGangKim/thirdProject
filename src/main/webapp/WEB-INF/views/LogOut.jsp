<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 세션에 값이 있을경우 전부 지우고 -->
<%
System.out.println("-----------------");
System.out.println("로그아웃 페이지 진입");
session.invalidate(); // 세션에 있는 값을 전부다 지우기
%>

<!-- 회원이 아닌 사람이 각 폴더안에 있는 파일을 접근 시 -->
<!-- 실행 즉시 컨트롤러 ->(리턴)-> 웹페이지  -->
<!-- com.human.java.start.controller에 위치 -->
<%
System.out.println("======세션삭제======");
response.sendRedirect("NoneMemberMain.do");
System.out.println("-----------------");
%>

</body>
</html>