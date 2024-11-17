<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
	
<%
UserDAO dao = UserDAO.getInstance();
ArrayList<User> list = dao.setUserlist();
	
if(session.getAttribute("userId") == null || !(session.getAttribute("userId").equals("admin"))){
%>	
	<script>
	history.back()
	alert('잘못된 접근입니다.')
	</script>
<%
} else{
%>
<section id="container">
	<div id="content" class="userListContent">
		<div class="contTit">
			<div class="prev">
				<button onclick="history.back()">
					<i class="fas fa-arrow-left"></i>
				</button>
			</div>
			<h2>회원관리</h2>
		</div>

		<div class="userListCont currCont">
			<div class="userListWrap">
				<table>
					<thead>
						<tr>
							<th>아이디</th>
							<th>이름</th>
							<th>연락처</th>
						</tr>
					</thead>
					<tbody>
						<%
						for (int i=0; i < list.size(); i++) {
							User u1 = list.get(i);
						%>
							<tr>
								<td><%=u1.getUserId()%></td>
								<td><a href="userEdit.jsp?editId=<%=u1.getUserId()%>"><%=u1.getUserName()%></a>
								</td>
								<td><%=u1.getUserTel()%></td>
							</tr>
						<%
						}
						%>
					</tbody>
				</table>

			</div>
		</div>
	</div>
</section>

<%@ include file="footer.jsp" %>

<%
}
%>
