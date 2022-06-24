<%@page import="xyz.itwill.bean.Hewon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 처리페이지(non_useBean_action.jsp)의 내장객체에 저장된 속성값을 반환받아 클라이언트에게 
전달하는 JSP 문서 --%>    
<%--
	//비정상적인 요청에 대한 응답 처리
	if(session.getAttribute("hewon")==null) {//session 내장객체에 저장된 속성값이 없는 경우 
		response.sendError(HttpServletResponse.SC_BAD_REQUEST);
		return;
	}

	//session 내장객체에 저장된 속성값을 객체로 반환받아 저장
	Hewon hewon=(Hewon)session.getAttribute("hewon");
	
	//다른 JSP 문서에서 session 내장객체에 저장된 속성값을 반환받아 사용할 수 없도록 속성값 삭제
	session.removeAttribute("hewon");
--%>
<%
	//비정상적인 요청에 대한 응답 처리
	if(request.getAttribute("hewon")==null) {//request 내장객체에 저장된 속성값이 없는 경우 
		response.sendError(HttpServletResponse.SC_BAD_REQUEST);
		return;
	}

	//request 내장객체에 저장된 속성값을 객체로 반환받아 저장
	Hewon hewon=(Hewon)request.getAttribute("hewon");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1>회원정보확인</h1>
	<hr>
	<p>이름 = <%=hewon.getName() %></p>
	<p>전화번호 = <%=hewon.getPhone() %></p>
	<p>주소 = <%=hewon.getAddress() %></p>
</body>	
</html>