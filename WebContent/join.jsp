<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<%
	UserDAO dao = UserDAO.getInstance();
	ArrayList<User> list = dao.setUserlist();
%>

<section id="container">
    <div id="content" class="joinContent">
        <div class="contTit">
            <div class="prev">
                <button onclick="history.back()">
					<i class="fas fa-arrow-left"></i>
				</button>
            </div>
            <h2>회원가입</h2>
        </div>
        
        <div class="joinCont currCont">
            <div class="joinWrap">
                <form name="join_form" class="joinForm commonForm" method="post" action="joinPro.jsp">
                    <fieldset>
                        <legend>회원가입</legend>
                        <ul>
                            <li>
                                <label for="idtext">아이디</label>
                                <input type="text" name="userId" id="idtext" placeholder="5자리 이상 15자리 이내로 입력">
                                <button type="button" onclick="id_check(userId)">중복조회</button>
                            </li>
                            <li>
                                <label for="pass">비밀번호</label>
                                <input type="password" name="userPw" id="pass" placeholder="영문, 숫자, 특수문자 포함하여 7~20글자" required>
                            </li>
                            <li>
                                <label for="passok">비밀번호 확인</label>
                                <input type="password" name="pwOk" id="passok" required>
                            </li>
                            <li>
                                <label for="name">이름</label>
                                <input type="text" name="userName" id="name">
                            </li>
                            <li>
                                <label for="tel">전화번호</label>
                                <input type="number" name="userTel" id="tel" placeholder="숫자만 입력">
                            </li>
                        </ul>
                    </fieldset>
                </form>
                <button type="button" class="joinBtn" onclick="join_check(form)">가입하기</button>
            </div>
        </div>
    </div>
</section>

<script type="text/javascript">
	function id_check(userId){
		let inputId = userId.value
		let chk = true;

		<%
		for (int i=0; i < list.size(); i++) {
			User u1 = list.get(i);
		%>
			if('<%= u1.getUserId() %>' == inputId) {
				chk = false; 
			}
		<%
		}
		%>
		
		if(!chk) {
			alert('중복된 아이디 입니다.')
			document.querySelector('.joinForm').classList.remove('on')
		} else {
			alert('해당 아이디는 사용하실 수 있습니다.')
			document.querySelector('.joinForm').classList.add('on')
		}
	}
</script>

<%@ include file="footer.jsp" %>
