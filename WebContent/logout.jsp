<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

	<% 
	session.removeAttribute("userId");
	session.removeAttribute("userPw");
	session.removeAttribute("userName");
	%>
	
	<script>
		alert('로그아웃 되었습니다.')
		location.href = "index.jsp"
	</script>
	
</body>