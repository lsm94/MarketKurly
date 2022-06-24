<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 입력페이지(login_form.jsp)의 전달값(아이디와 비밀번호)를 반환받아 인증 처리하고 처리에 따른
결과를 클라이언트에게 전달하는 JSP 문서 - 처리페이지 --%>
<%-- 인증 실패 : 클라이언트가 입력페이지(login_form.jsp)로 이동되도록 URL 주소 전달 --%>    
<%-- 인증 성공 : 클라이언트가 출력페이지(login_user.jsp)로 이동되도록 URL 주소 전달 --%>    
<%
	//비정상적인 요청에 대한 응답 처리
	if(request.getMethod().equals("GET")) {//JSP 문서(login_action.jsp)를 GET 방식으로 요청한 경우
		//세션에 에러메세지를 속성값으로 저장하고 클라이언트에게 입력페이지의 URL 주소 전달하여 페이지 이동
		session.setAttribute("message", "비정상적인 방법으로 페이지를 요청 했습니다.");
		response.sendRedirect("login_form.jsp");
		return;
	}

	//전달값을 반환받아 저장
	String id=request.getParameter("id");
	String passwd=request.getParameter("passwd");
	
	//아이디와 비밀번호를 비교 - 인증처리
	if(!id.equals("abc123") || !passwd.equals("123456")) {//인증이 실패한 경우
		//세션에 에러메세지와 아이디를 속성값으로 저장하고 클라이언트에게 입력페이지의 URL 주소 전달하여 페이지 이동
		session.setAttribute("message","아이디 또는 비밀번호를 잘못 입력했습니다.");
		session.setAttribute("id",id);
		response.sendRedirect("login_form.jsp");
		return;
	}
	
	//인증 성공 : 세션에 권한 관련 정보를 속성값으로 저장하고 클라이언트에게 출력페이지의 
	//URL 주소 전달하여 페이지 이동
	session.setAttribute("loginId", id);
	response.sendRedirect("login_user.jsp");
%>











