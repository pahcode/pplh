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
<title>회원삭제</title>
</head>
<body>

	<%
	request.setCharacterEncoding("utf-8");
	
	String delId = request.getParameter("id");
	UserDAO.getInstance().deleteUser(delId);
	%>
	  
	<script>
	alert('<%=delId%> 회원을 삭제하였습니다')
	location.href = "userList.jsp"
	</script>
	
</body>
</html>



