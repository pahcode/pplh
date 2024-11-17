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
<title>로그인</title>
</head>
<body>

<% 
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	UserDAO dao = UserDAO.getInstance();
	ArrayList<User> list = dao.setUserlist();
	
	boolean chkId = dao.checkId(id);
	String name = dao.checkPw(id, pw);
	
	if(!chkId){ 
%>
		<script>
		alert('아이디가 존재하지 않습니다.')
		history.back()
		</script>
<% 		
	} else if(name == ""){
%>
		<script>
		alert('비밀번호가 일치하지 않습니다.')
		history.back()
		</script>
<% 		
	} else{
		session.setAttribute("userId", id);
		session.setAttribute("userPw", pw);
		session.setAttribute("userName", name);
%>	
		<script>
		alert('로그인 되었습니다.')
		location.href = "index.jsp"
		</script>
<% 		
	}
%>	

</body>
</html>



