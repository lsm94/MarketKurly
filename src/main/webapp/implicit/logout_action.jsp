<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 로그아웃 처리하고 로그인 입력페이지(login_form.jsp)로 이동되도록 URL 주소를 전달하는 JSP 문서 --%>
<%-- => 로그아웃 : 인증을 통해 획득한 권한 제거 --%>    
<%
	//세션의 속성값으로 저장된 권한 관련 정보 삭제
	//session.removeAttribute("loginId");

	//session.invalidate() : 바인딩 세션을 언바인딩 처리하는 메소드
	// => JSP 문서에 연결된 클라이언트의 세션 소멸 
	session.invalidate();
	
	response.sendRedirect("login_form.jsp");
%>