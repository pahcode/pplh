<%@page import="java.sql.Connection"%>
<%@page import="user.User"%>
<%@page import="user.UserDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>LH한국토지주택공사</title>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/sub.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<body>

	<%
	String userId = "";
	String userPw = "";
	String userName = "";
	
	if (session.getAttribute("userId") != null) {
		userId = (String)session.getAttribute("userId");
		userPw = (String)session.getAttribute("userPw");
		userName = (String)session.getAttribute("userName");
	}
	%>

	<div id="wrap">

		<header id="header">
			<div class="row">
				<h1>
					<a href="index.jsp"><img src="img/logo.png" alt="LH한국토지주택공사"></a>
				</h1>
				<div class="navBtn">
					<div class="openBtn">
						<i class="fas fa-bars"></i>
					</div>
				</div>
				
				<div id="navWrap">
					<nav class="nav">
					
						<div class="closeBtn">
							<i class="fas fa-times"></i>
						</div>
						
						<div class="navScrollWrap">
						
							<div class="topName">
							<% if(userId.equals("")) { %>
								<div class="navLogo">
									<img src="img/logo.png">
								</div>
							<% } else { %>
								<p>
									<%=userName %> <span>님</span>
								</p>
								<% if(userId.equals("admin")) { %>
									<div>
										<a href="userList.jsp" class="modifyBtn"><span>회원관리</span><i
											class="fas fa-address-book"></i></a>
									</div>
								<% } else { %>
									<div>
										<a href="modify.jsp" class="modifyBtn"><span>회원정보수정</span><i
											class="fas fa-cog"></i></a>
									</div>
								<% } %>
							<% } %>
							</div>
							
							<div class="member">
							<% if(userId.equals("")) { %>
								<a href="login.jsp">
									<i class="far fa-user"></i>
									<p>로그인</p>
								</a>
								<a href="join.jsp" class="joinBtn">
									<i class="far fa-edit"></i>
									<p>회원가입</p>
								</a>
							<% } else { %>
								<a href="logout.jsp">
									<i class="fas fa-sign-out-alt"></i>
									<p>로그아웃</p>
								</a>
								<a href="modify.jsp" class="modifyBtn">
									<i class="fas fa-eraser"></i>
									<p>회원정보수정</p>
								</a>
							<% } %>
							</div>
							
							<ul class="depth1">
								<li>
									<a href="#" class="intro">LH소개
										<i class="fas fa-chevron-down"></i>
									</a>
									<ul class="depth2">
										<li><a href="intro1.jsp" class="intro1">조직소개</a></li>
										<li><a href="ready.jsp" class="ready">임원소개</a></li>
										<li><a href="ready.jsp" class="ready">주요연혁</a></li>
									</ul></li>
								<li><a href="#" class="bisi">주요사업<i
										class="fas fa-chevron-down"></i></a>
									<ul class="depth2">
										<li><a href="ready.jsp" class="ready">도시조성사업</a></li>
										<li><a href="ready.jsp" class="ready">도시재생사업</a></li>
										<li><a href="ready.jsp" class="ready">지역균형사업</a></li>
										<li><a href="ready.jsp" class="ready">공공주택사업</a></li>
										<li><a href="ready.jsp" class="ready">주거복지사업</a></li>
									</ul></li>
								<li><a href="#">고객지원<i class="fas fa-chevron-down"></i></a>
									<ul class="depth2">
										<li><a href="ready.jsp" class="ready">공지사항</a></li>
										<li><a href="ready.jsp" class="ready">채용정보</a></li>
										<li><a href="ready.jsp" class="ready">공모안내</a></li>
										<li><a href="ready.jsp" class="ready">고객제안</a></li>
										<li><a href="ready.jsp" class="ready">민원</a></li>
										<li><a href="ready.jsp" class="ready">콜센터</a></li>
									</ul></li>
								<li><a href="#">열린경영<i class="fas fa-chevron-down"></i></a>
									<ul class="depth2">
										<li><a href="ready.jsp" class="ready">경영공시</a></li>
										<li><a href="ready.jsp" class="ready">윤리경영</a></li>
										<li><a href="ready.jsp" class="ready">사회공헌</a></li>
										<li><a href="ready.jsp" class="ready">인권경영</a></li>
									</ul></li>
								<li><a href="#">뉴스룸<i class="fas fa-chevron-down"></i></a>
									<ul class="depth2">
										<li><a href="ready.jsp" class="ready">프레스센터</a></li>
										<li><a href="ready.jsp" class="ready">홍보자료</a></li>
										<li><a href="ready.jsp" class="ready">특별기획</a></li>
										<li><a href="ready.jsp" class="ready">SNS</a></li>
									</ul></li>
							</ul>
						</div>
						
					</nav>
				</div>
			</div>
		</header>


		