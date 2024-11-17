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
	User u1 = dao.getUser(userId);
	String name = u1.getUserName();
	%>
	<section id="container">
		<div id="content" class="delContent">
			<div class="contTit">
				<div class="prev">
					<button onclick="history.back()">
						<i class="fas fa-arrow-left"></i>
					</button>
				</div>
				<h2>회원탈퇴</h2>
			</div>
	
			<div class="modifyCont currCont">
				<div class="modifyWrap">
					<form name="del_form" method="post" class="delForm commonForm"
						action="deletePro.jsp">
						<fieldset>
							<legend>회원탈퇴</legend>
							
							<strong>
								회원탈퇴 시<span> 개인정보 및<br>LH한국토지주택공사에서<br>만들어진 모든 데이터</span>가<br>삭제됩니다.
							</strong>
								
							<p><%=name%>님 정말 탈퇴하시겠습니까?</p>
							
							<div class="btnBox">
								<button type="submit" class="changeBtn">네</button>
								<button type="button" class="resetBtn" onclick="location.href='index.jsp'">아니오</button>
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
