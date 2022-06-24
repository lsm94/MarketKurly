﻿<%@page import="xyz.itwill.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 장바구니에 저장된 제품목록을 클라이언트에게 전달하는 JSP --%>
<%-- => 로그인 사용자만 요청 가능한 JSP 문서 --%>
<%--
	//세션에 저장된 권한 관련 정보(회원정보)를 반환받아 저장
	MemberDTO loginMember=(MemberDTO)session.getAttribute("loginMember");

	if(loginMember==null) {//비로그인 사용자인 경우
		//request.getRequestURI() : 클라이언트의 요청 URL 주소에서 URI 값을 반환하는 메소드
		//ex)요청 URL 주소 - http://localhost:8000/jsp/index.jsp?workgroup=cart&work=cart_list
		// => request.getRequestURI() 메소드의 반환값 : /jsp/index.jsp
		String requestURI=request.getRequestURI();
		//System.out.println("requestURI = "+requestURI);
		
		//request.getQueryString() : 클라이언트의 요청 URL 주소에서 질의문자열을 반환하는 메소드
		//ex)요청 URL 주소 - http://localhost:8000/jsp/index.jsp?workgroup=cart&work=cart_list
		// => request.getQueryString() 메소드의 반환값 : workgroup=cart&work=cart_list
		String queryString=request.getQueryString();
		//System.out.println("queryString = "+queryString);
		
		if(queryString==null || queryString.equals("")) {
			queryString="";
		} else {
			queryString="?"+queryString;
		}
		
		//세션에 요청 웹프로그램에 대한 URL 주소 저장
		session.setAttribute("url", requestURI+queryString);
		session.setAttribute("message", "로그인해야만 사용 가능합니다.");

		//로그인정보 입력페이지(member_login.jsp)로 이동
		out.println("<script type='text/javascript'>");
		out.println("location.href='index.jsp?workgroup=member&work=member_login';");
		out.println("</script>");
		return;
	}
--%>

<%-- include 지시어를 사용하여 외부파일(JSPF)의 코드를 가져와 포함되도록 처리 --%>
<%@include file="/security/login_url.jspf" %>
    
<h1>장바구니 목록</h1>