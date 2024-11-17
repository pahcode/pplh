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
<title>회원정보수정</title>
</head>
<body>

	<%
	request.setCharacterEncoding("utf-8");
	
	String id = (String)session.getAttribute("userId");
	String pw = (String)session.getAttribute("userPw");
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	
	User u1 = new User(id, pw, name, tel);
	UserDAO.getInstance().updateUser(u1);
	%>
	  
	<script>
	alert('회원정보가 수정되었습니다.')
	location.href = "modify.jsp"
	</script>
	
</body>
</html>



