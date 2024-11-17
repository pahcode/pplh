<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<%
UserDAO dao = UserDAO.getInstance();

if(session.getAttribute("userId") == null){
%>	
	<script>
	history.back()
	alert('잘못된 접근입니다.')
	</script>
<%
} else{
	// session에 userId, userPw 있음
	User u1 = dao.getUser(userId);
	String name = u1.getUserName();
	String tel = u1.getUserTel();
	%>
	<section id="container">
		<div id="content" class="modifyContent">
			<div class="contTit">
				<div class="prev">
					<button onclick="history.back()">
						<i class="fas fa-arrow-left"></i>
					</button>
				</div>
				<h2>회원정보수정</h2>
			</div>
	
			<div class="modifyCont currCont">
				<div class="modifyWrap">
					<form name="modify_form" method="post" class="modifyForm commonForm"
						action="modifyPro.jsp">
						<fieldset>
							<legend>회원정보수정</legend>
							<ul>
								<li>
									<label for="idtext">아이디</label> 
									<input type="text" name="id" id="idtext" value="<%=userId%>" disabled>
								</li>
								<li>
									<label for="pass">비밀번호</label>
									<p>
										<a href="pwModify.jsp">비밀번호 변경</a>
									</p>
								</li>
								<li>
									<label for="name">이름</label>
									<input type="text" name="name" id="name" value="<%=name%>">
								</li>
								<li>
									<label for="tel">전화번호</label>
									<input type="text" name="tel" id="tel" value="<%=tel%>">
								</li>
							</ul>
							<div class="btnBox">
								<button type="submit" class="changeBtn">수정</button>
								<button type="reset" class="resetBtn">취소</button>
							</div>
						</fieldset>
					</form>
					
					<a href="delete.jsp" class="delBtn">회원탈퇴</a>
				</div>
			</div>
		</div>
	</section>
	
	<%@ include file="footer.jsp"%>

<%
}
%>
