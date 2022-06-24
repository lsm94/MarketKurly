<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 입력페이지(useBean_form.jsp)의 전달값을 반환받아 내장객체(request)의 속성값으로 저장하고
출력페이지(useBean_display.jsp)로 포워드 이동하는 JSP 문서 --%>  
<%
	//비정상적인 요청에 대한 응답 처리
	if(request.getMethod().equals("GET")) {
		response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
		return;
	}

	//리퀘스트 메세지 몸체부에 저장되어 전달된 값에 대한 캐릭터셋 변경
	request.setCharacterEncoding("utf-8");
%>
<%-- useBean ActionTag : JSP 문서에 객체를 제공하기 위한 태그 --%>
<%-- 형식) <jsp:useBean id="식별자" class="클래스" scope="사용범위"/> --%>
<%-- => 내장객체에 속성값으로 저장된 객체를 반환받아 제공하거나 객체를 생성하여 내장객체의 속성값을 저장한 후 제공 --%>
<%-- id 속성(필수) : useBean 태그로 제공된 객체를 구분하기 위한 식별자를 속성값으로 설정 --%>
<%-- => 내장객체의 저장된 속성값을 구분하기 위한 속성명을 표현 --%>
<%-- class 속성(필수) : 객체에 대한 자료형(클래스)를 속성값으로 설정 --%>
<%-- scope 속성(선택) : page(기본), request, session, application 중 하나를 속성값으로 설정 --%>
<jsp:useBean id="hewon" class="xyz.itwill.bean.Hewon" scope="request"/>
<%-- Hewon hewon=new Hewon(); request.setAttribute("hewon", hewon); --%>

<%-- setProperty ActionTag : useBean 태그로 제공된 객체의 필드값을 변경하기 위한 태그 --%>
<%-- => 객체 필드의 Setter 메소드를 호출하여 객체의 필드값 변경 --%>
<%-- 형식) <jsp:setProperty name="식별자" property="필드명" value="변경값"/> --%>
<%-- name 속성(필수) : useBean 태그로 제공된 객체의 식별자(id 속성값)를 속성값으로 설정 --%>
<%-- property 속성(필수) : 값을 변경하고자 하는 필드명을 속성값으로 설정 --%>
<%-- => 필드명을 기반으로 작성된 Setter 메소드 자동 호출 - 필드명으로 작성된 Setter 메소드가 없는 경우 에러 발생 --%>
<%-- value 속성(선택) : 필드에 저장된 변경값을 속성값으로 설정 --%>
<%-- => value 속성을 생략하면 JSP 문서 요청시 전달된 값을 반환받아 필드값 변경 --%>
<%-- <jsp:setProperty name="hewon" property="name" value="홍길동"/> --%>
<%-- hewon.setName("홍길동"); --%>

<%-- JSP 문서 요청시 전달되는 값의 이름(입력태그의 name 속성값)과 setProperty 태그의 property 
속성값(객체 필드명)이 동일해야 전달값을 반환받아 필드값으로 변경 --%>
<%-- 
<jsp:setProperty name="hewon" property="name"/>
<jsp:setProperty name="hewon" property="phone"/>
<jsp:setProperty name="hewon" property="address"/>
--%>
<%-- hewon.setName(request.getParameter("name")); --%>

<%-- property 속성값을 [*]로 설정하면 모든 전달값을 반환받아 필드값 변경 --%>
<%-- => 전달값의 이름과 필드명이 같아야만 전달값을 이용한 필드값 변경 가능 --%>
<jsp:setProperty name="hewon" property="*"/>

<%-- forward 태그를 사용하여 페이지 이동 --%>
<jsp:forward page="useBean_display.jsp"/>
<%-- request.getRequestDispatcher("useBean_display.jsp").forward(request, response); --%>






