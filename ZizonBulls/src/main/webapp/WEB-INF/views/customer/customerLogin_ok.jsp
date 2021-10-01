<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	로그인 성공하셨습니다. <hr>
	${sessionScope.cusName } 님 헬로 <br>
	비밀번호는 ${sessionScope.pass } <br>
	${sessionScope.cusTime} <br>
	
	<a href='memberInfo.do'> 마이페이지 </a>
</body>
</html>