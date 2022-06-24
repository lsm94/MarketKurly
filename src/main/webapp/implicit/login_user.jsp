<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 비로그인 사용자와 로그인 사용자를 구분하여 다르게 응답되도록 웹프로그램 작성 --%>
<%-- 비로그인 사용자 : 클라이언트가 입력페이지(login_form.jsp)로 이동하도록 URL 주소를 전달하는 JSP 문서 --%>
<%-- 로그인 사용자 : 클라이언트에게 환영메세지를 전달하는 JSP 문서 - 출력페이지 --%>
<%-- => [로그아웃]을 클릭한 경우 로그아웃 처리페이지(logout_action.jsp)로 이동 --%>
<%-- => [로그인]를 클릭한 경우 로그인페이지(login_form.jsp)로 이동 --%>
<%
	//세션의 속성값으로 저장된 권한 관련 정보를 반환받아 저장
	String loginId=(String)session.getAttribute("loginId");

	//비로그인 사용자가 JSP 문서를 요청한 경우에 대한 응답 처리 - 비정상적인 요청 
	if(loginId==null) {//세션에 속성값으로 저장된 권한 관련 정보가 없는 경우
		session.setAttribute("message", "페이지에 접근할 수 있는 권한이 없습니다.");
		response.sendRedirect("login_form.jsp");
		return;
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1>로그인 사용자 전용 페이지</h1>
	<hr>
	<p>
		<%=loginId %>님, 환영합니다.&nbsp;&nbsp;
		<a href="logout_action.jsp">[로그아웃]</a>&nbsp;&nbsp;
		<a href="login_form.jsp">[로그인]</a>
	</p>
	<hr>
	<p>로그인 사용자만 볼 수 있는 아주 중요한 내용입니다.</p>
	<p>로그인 사용자만 볼 수 있는 아주 중요한 내용입니다.</p>
	<p>로그인 사용자만 볼 수 있는 아주 중요한 내용입니다.</p>
	<p>로그인 사용자만 볼 수 있는 아주 중요한 내용입니다.</p>
	<p>로그인 사용자만 볼 수 있는 아주 중요한 내용입니다.</p>
	<p>로그인 사용자만 볼 수 있는 아주 중요한 내용입니다.</p>
	<p>로그인 사용자만 볼 수 있는 아주 중요한 내용입니다.</p>
	<p>로그인 사용자만 볼 수 있는 아주 중요한 내용입니다.</p>
	<p>로그인 사용자만 볼 수 있는 아주 중요한 내용입니다.</p>
	<p>로그인 사용자만 볼 수 있는 아주 중요한 내용입니다.</p>
</body>
</html>