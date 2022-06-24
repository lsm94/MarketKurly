<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 입력페이지(join_form.jsp)로부터 전달된 회원정보를 반환받아 클라이언트에게 응답하는 JSP 문서 - 처리페이지 --%>
<%
	//비정상적인 요청에 대한 응답 처리 - 클라이언트에게 에러코드 전달하거나 에러페이지(입력페이지)로 
	//이동하기 위한 URL 주소 전달
	//request.getMethod() : JSP 문서의 요청방식(GET 또는 POST)을 반환하는 메소드
	if(request.getMethod().equals("GET")) {//JSP 문서(join_action.jsp)를 GET 방식으로 요청한 경우
		/*
		//response.sendError(int sc) : 클라이언트에게 에러코드(4XX or 5XX)를 전달하는 메소드
		// => 응답 관련 상태코드는 HttpServletResponse 인터페이스의 상수(Constant)를 사용하는 것을 권장
		response.sendError(HttpServletResponse.SC_BAD_REQUEST);
		return;
		*/
		
		/*
		//response.sendRedirect(String url) : 클라이언트에게 URL 주소를 전달하는 메소드
		// => 클라이언트는 URL 주소를 응답받아 요청 URL 주소를 변경하여 웹프로그램 요청 - 리다이렉트 이동
		// => 리다이렉트 이동은 서버 디렉토리를 최상위 디렉토리로 처리
		response.sendRedirect("/jsp/error/error_400.jsp");
		return;
		*/

		/*
		//자바스크립트를 이용하여 메세지 출력 및 페이지 이동
		out.println("<script type='text/javascript'>");
		out.println("alert('비정상적인 방법으로 요청 하였습니다.');");
		out.println("location.href='join_form.jsp';");
		out.println("</script>");
		return;
		*/

		/*
		//질의문자열(QueryString)을 이용하여 요청 JSP 문서에 값 전달
		// => 질의문자열을 이용하여 전달할 수 있는 값은 영문자,숫자,일부 특수문자로만 구성된 값만 가능
		//문제점)영문자,숫자,일부 특수문자를 제외한 문자를 질의문자열로 전달 불가능
		//해결법)영문자,숫자,일부 특수문자를 제외한 문자를 부호화 변환하여 전달
		//String message="비정상적인 방법으로 요청 하였습니다.";
		//URLEncoder.encode(String s, String charset) : 문자열을 전달받아 원하는 문자형태의
		//문자열로 부호화 처리하여 반환하는 메소드 - JavaScript의 encodeURIComponent 함수와 동일
		String message=URLEncoder.encode("비정상적인 방법으로 요청 하였습니다.","utf-8");
		response.sendRedirect("join_form.jsp?message="+message);
		return;
		*/
		
		//session.setAttribute(String name, Object value) : JSP 문서에 바인딩된 세션(HttpSession)에 
		//세션 속성명과 세션 속성값을 저장하거나 변경하는 메소드 
		session.setAttribute("message", "비정상적인 방법으로 요청 하였습니다.");
		response.sendRedirect("join_form.jsp");
		return;
	}

	//POST 방식으로 요청하여 리퀘스트 메세지 몸체부에 저장되어 전달되는 값에 대한 캐릭터셋 변경
	//request.setCharacterEncoding(String encoding) : 리퀘스트 메세지 몸체부의 저장된 값에 대한 
	//문자형태(캐릭터셋 - CharacterSet)을 변경하는 메소드 - 기본값 : ISO-8859-1
	request.setCharacterEncoding("utf-8");
	
	//전달값을 반환받아 저장
	//request.getParameter(String name) : 전달값을 문자열로 반환하는 메소드
	// => 입력태그의 name 속성값 또는 질의문자열(QueryString)의 이름으로 전달값 구분
	String id=request.getParameter("id");
	String pass=request.getParameter("pass");
	String name=request.getParameter("name");
	String addr=request.getParameter("addr");
	String gender=request.getParameter("gender");
	String job=request.getParameter("job");
	//request.getParameterValues(String name) : 같은 이름으로 전달된 값을 문자열 배열로 반환하는 메소드
	String[] hobby=request.getParameterValues("hobby");
	String profile=request.getParameter("profile");
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
	<p>아이디 = <%=id %></p>
	<p>비밀번호 = <%=pass %></p>
	<p>이름 = <%=name %></p>
	<p>주소 = <%=addr %></p>
	<p>성별 = <%=gender %></p>
	<p>직업 = <%=job %></p>
	<% if(hobby==null) { %>
		<p>취미 = 미선택</p>
	<% } else { %>
		<p>취미 = 
		<% for(String temp:hobby) { %>
			<%=temp %>&nbsp;
		<% } %>
		</p>
	<% } %>
	<%-- 엔터(Enter)를 br 태그로 변환하여 출력 --%>
	<p>자기소개 = <br><%=profile.replace("\n", "<br>") %></p>
</body>
</html>










