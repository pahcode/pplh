<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>


<section id="container">
	<div id="content" class="loginContent">
		<div class="contTit">
			<div class="prev">
				<button onclick="history.back()">
					<i class="fas fa-arrow-left"></i>
				</button>
			</div>
			<h2>로그인</h2>
		</div>

		<div class="loginCont currCont">
			<div class="logoImg">
				<img src="img/logo2.png" alt="">
			</div>
			<div class="loginWrap">
				<form action="loginPro.jsp" method="post" class="loginForm">
					<fieldset>
						<legend>로그인</legend>
						<input type="text" id="id_lbl" name="id" placeholder="아이디"> 
						<input type="password" id="pw_lbl" name="pw" placeholder="비밀번호">
						<button type="submit">로그인</button>
					</fieldset>
				</form>

				<div class="joinSearchWrap">
					<a href="join.jsp">회원가입</a>
					<a href="#">아이디 찾기</a>
					<a href="#">비밀번호 찾기</a>
				</div>

				<div class="simpleLogin">
					<p>SNS 계정으로 간편하게 로그인 하세요.</p>
					<div class="snsIconBox">
						<a href="#" class="naver">
							<div class="imgBox">
								<img src="img/icon_naver.png" alt="네이버로그인">
							</div> <span>Naver</span>
						</a> <a href="#" class="kakao">
							<div class="imgBox">
								<img src="img/icon_kakao.png" alt="카카오로그인">
							</div> <span>Kakao</span>
						</a> <a href="#" class="google">
							<div class="imgBox">
								<img src="img/icon_google.png" alt="구글로그인">
							</div> <span>Google</span>
						</a>
					</div>
				</div>

			</div>
		</div>
	</div>
</section>

<%@ include file="footer.jsp"%>
