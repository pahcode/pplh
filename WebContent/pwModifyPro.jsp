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
<title>비밀번호변경</title>
</head>
<body>

	<%
	request.setCharacterEncoding("utf-8");
	
	String id = (String)session.getAttribute("userId");
	String keyPw = (String)session.getAttribute("userPw");
	String currPw = request.getParameter("currPw");
	String changePw = request.getParameter("changePw");
	  
	if (!(keyPw.equals(currPw))) {
	%>
		<script>
		alert('현재 비밀번호가 일치하지 않습니다.')
		location.href = "pwModify.jsp"
		</script>
	<%
    } else{
    	UserDAO.getInstance().updatePw(id, changePw);
   	%>
   		<script>
    	alert('회원정보가 수정되었습니다.')
    	location.href = "modify.jsp"
   		</script>
    <%
    }
   	%>
	
	
</body>
</html>



