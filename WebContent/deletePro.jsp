<%@page import="java.sql.Connection"%>
<%@page import="user.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
</head>
<body>

	<%
	request.setCharacterEncoding("utf-8");
	
	String id = (String)session.getAttribute("userId");
	UserDAO.getInstance().deleteUser(id);
	
	session.removeAttribute("userId");
	session.removeAttribute("userPw");
	session.removeAttribute("userName");
	%>
	  
	<script>
	alert('회원탈퇴가 완료되었습니다.')
	location.href = "index.jsp"
	</script>
	
</body>
</html>


