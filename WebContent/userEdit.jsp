<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<%
UserDAO dao = UserDAO.getInstance();

if(session.getAttribute("userId") == null || !(session.getAttribute("userId").equals("admin"))){
%>	
	<script>
	history.back()
	alert('잘못된 접근입니다.')
	</script>
<%
} else{
	String editId = request.getParameter("editId");
	User u1 = dao.getUser(editId);
	
	String id = u1.getUserId();
	String pw = u1.getUserPw();
	String name = u1.getUserName();
	String tel = u1.getUserTel();
	String reg_date = u1.getReg_date();
	%>
	
	<section id="container">
		<div id="content" class="modifyContent">
			<div class="contTit">
				<div class="prev">
					<button onclick="history.back()">
						<i class="fas fa-arrow-left"></i>
					</button>
				</div>
				<h2>회원관리</h2>
			</div>
	
			<div class="modifyCont userEditCont currCont">
				<div class="modifyWrap">
					<form name="userEdit_form" method="post" class="modifyForm commonForm"
						action="userEditPro.jsp" onsubmit="toEnabled()">
						<fieldset>
							<legend>회원관리</legend>
							<ul>
								<li>
									<label for="idtext">아이디</label> 
									<input type="text" name="id" id="id" value="<%=id%>" disabled>
								</li>
								<li>
									<label for="pass">비밀번호</label>
									<input type="password" name="pw" id="pw" value="<%=pw%>" disabled>
								</li>
								<li>
									<label for="name">이름</label>
									<input type="text" name="name" id="name" value="<%=name%>">
								</li>
								<li>
									<label for="tel">전화번호</label>
									<input type="text" name="tel" id="tel" value="<%=tel%>">
								</li>
								<li>
									<label for="idtext">가입일시</label> 
									<input type="text" name="regDate" id="regDate" value="<%=u1.getReg_date()%>" disabled>
								</li>
							</ul>
							<div class="btnBox">
								<button type="submit" class="changeBtn">수정</button>
								<button type="reset" class="resetBtn">취소</button>
							</div>
						</fieldset>
					</form>
	
					<a href="userDelPro.jsp?id=<%=id%>" class="adminDelBtn"><i class="fas fa-trash-alt"></i> 회원삭제하기</a>
				</div>
			</div>
		</div>
	</section>
	
	<%@ include file="footer.jsp"%>
	
	<script type="text/javascript">
		function toEnabled(){
			$("input[name=id]").attr("disabled", false);
			$("input[name=pw]").attr("disabled", false);
		}
	</script>
<%
}
%>
