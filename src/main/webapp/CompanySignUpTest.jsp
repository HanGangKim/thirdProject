<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- COMPANY_ID VARCHAR2(30) NOT NULL,
COMPANY_PASSWORD VARCHAR2(30) NOT NULL,
COMPANY_NAME VARCHAR2(30) NOT NULL,
COMPANY_PH VARCHAR2(20) NOT NULL,
COMPANY_EMAIL VARCHAR2(50) NOT NULL,
COMPANY_REGNUM VARCHAR2(15) NOT NULL,
COMPANY_FLAG VARCHAR2(3) NOT NULL,
CONSTRAINT PK_COMPANY_INFO PRIMARY KEY(COMPANY_ID) -->
<form action="/company/companySignUp" method="get">
ID : <input type="text" name="company_id"><br>
PW : <input type="password" name="password"><br>
PH : <input type="text" name="ph"><br>
EMAIL : <input type="text" name="company_email"><br>
REGNUM : <input type="text" name="company_regnum"><br>
FLAG : <input type="text" name="company_flag"><br><br>

<input type="submit" value="회원가입">
</form>
</body>
</html>