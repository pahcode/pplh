<%@page import="web.Intro"%>
<%@page import="web.IntroDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<%
	IntroDAO dao = IntroDAO.getInstance();
	ArrayList<Intro> list = dao.init();
%>

<section id="container">
    <div id="content" class="introContent">
        <div class="contTit">
            <div class="prev">
                <button onclick="history.back()">
					<i class="fas fa-arrow-left"></i>
				</button>
            </div>
            <h2>조직소개</h2>
        </div>
        
        <div class="introCont currCont">
            <div class="introWrap">
            	<ul>
            		<%
					for (int i=0; i < list.size(); i++) {
						Intro i1 = list.get(i);
					%>
						<li>
							<h3>본부 및 부분명 : <%=i1.getTeam()%></h3>
							<div class="txtBox"><p><%=i1.getSubstance()%></p></div>
						</li>
					<%
					}
					%>
            	</ul>
            </div>
        </div>
    </div>
</section>

<%@ include file="footer.jsp" %>
