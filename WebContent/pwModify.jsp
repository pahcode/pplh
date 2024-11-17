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
	// 이미 session에 userId, userPw 있음

	%>
	<section id="container">
		<div id="content" class="modifyContent">
			<div class="contTit">
				<div class="prev">
					<button onclick="history.back()">
						<i class="fas fa-arrow-left"></i>
					</button>
				</div>
				<h2>비밀번호변경</h2>
			</div>
	
			<div class="modifyCont currCont">
				<div class="modifyWrap">
					<form name="pwModify_form" method="post" class="pwModifyForm commonForm"
						action="pwModifyPro.jsp">
						<fieldset>
							<legend>비밀번호변경</legend>
							<ul>
								<li>
									<label for="currPw">현재 비밀번호</label> 
									<input type="password" name="currPw" id="currPw">
								</li>
								<li>
									<label for="changePw">변경할 비밀번호</label> 
									<input type="password" name="changePw" id="changePw">
								</li>
								<li>
									<label for="changePwOk">변경할 비밀번호 확인</label> 
									<input type="password" name="changePwOk" id="changePwOk">
								</li>
							</ul>
							<div class="btnBox">
								<button type="button" class="changeBtn" onclick="pw_check(form)">수정</button>
								<button type="reset" class="resetBtn">취소</button>
							</div>
						</fieldset>
					</form>
	
				</div>
			</div>
		</div>
	</section>
	
	<%@ include file="footer.jsp"%>

<%
}
%>
