<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div>구글 메일 전송</div>

<form action="mailSend.do">
이름 : <input type="text" name="name">
<br>
성 : <input type="text" name="last_name">
<br>
이메일 주소 : <input type="text" name="email">
<br>
핸드폰 번호 : <input type="text" name="phone">
<br>
내용 : <textarea name="message"></textarea>
<br>
<input type="submit" value="SEND">
</form>

</body>
</html>