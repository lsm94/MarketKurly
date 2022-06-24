<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 비로그인 사용자와 로그인 사용자를 구분하여 다르게 응답되도록 웹프로그램 작성 --%>
<%-- => 로그인 : 인증을 통한 권한 획득 과정 --%>
<%-- 비로그인 사용자 : 인증정보(아이디와 비밀번호)를 입력받는 JSP 문서 - 입력페이지 --%>
<%-- => [로그인]을 클릭한 경우 form 태그를 이용하여 로그인 처리페이지(login_action.jsp)를 
POST 방식으로 요청하여 페이지 이동 - 입력값(인증정보) 전달 --%>
<%-- 로그인 사용자 : 환영 메세지를 클라이언트에게 전달하는 JSP 문서 - 출력페이지 --%>
<%-- => [로그아웃]을 클릭한 경우 로그아웃 처리페이지(logout_action.jsp)로 이동 --%>
<%-- => [마이페이지]를 클릭한 경우 출력페이지(login_user.jsp)로 이동 --%>
<%
	//세션의 속성값으로 저장된 권한 관련 정보를 반환받아 저장
	String loginId=(String)session.getAttribute("loginId");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<% if(loginId==null) {//비로그인 사용자인 경우 %>
		<%
			String message=(String)session.getAttribute("message");
			if(message==null) {
				message="";
			} else {
				session.removeAttribute("message");
			}
			
			String id=(String)session.getAttribute("id");
			if(id==null) {
				id="";
			} else {
				session.removeAttribute("id");
			}
		%>
		<h1>로그인(비로그인 사용자)</h1>
		<hr>
		<form action="login_action.jsp" method="post" name="loginForm">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" value="<%=id%>"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="passwd"></td>
			</tr>
			<tr>
				<td colspan="2"><button type="button" id="loginBtn">로그인</button></td>
			</tr>
		</table>
		</form>
		<p id="message" style="color: red;"><%=message %></p>
		
		<script type="text/javascript">
		loginForm.id.focus();
		
		document.getElementById("loginBtn").onclick=function() {
			if(loginForm.id.value=="") {
				document.getElementById("message").innerHTML="아이디를 입력해 주세요.";
				loginForm.id.focus();
				return;	
			}
			
			if(loginForm.passwd.value=="") {
				document.getElementById("message").innerHTML="비밀번호를 입력해 주세요.";
				loginForm.passwd.focus();
				return;	
			}
			
			loginForm.submit();
		}
		</script>
	<% } else { %>
		<h1>로그인(로그인 사용자)</h1>
		<hr>
		<p>
		<%=loginId %>님, 환영합니다.&nbsp;&nbsp;
		<a href="logout_action.jsp">[로그아웃]</a>&nbsp;&nbsp;
		<a href="login_user.jsp">[마이페이지]</a>
	</p>
	<% } %>
</body>
</html>