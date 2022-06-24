<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 선언문 : 필드 또는 메소드를 선언하기 위한 영역 --%>    
<%!
	//서블릿 클래스의 필드 - 서블릿 객체가 소멸되면 필드 자동 소멸 
	int count=0;
%>    
    
<%-- 스크립틀릿 : 요청을 처리하기 위한 Java 명령을 작성하는 영역 - _jspService 메소드의 명령 --%>    
<%
	//_jspService 메소드의 선언된 지역변수 - 메소드가 종료되면 변수는 자동 소멸
	//int count=0;

	count++;
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1>스크립팅 요소(Scripting Element)</h1>
	<hr>
	<%-- out 객체 : JSP 문서에서 처리 결과를 생성하기 위해 기본적으로 제공되는 출력스트림(PrintWriter 객체) --%>
	<%-- <p>JSP 문서의 요청 횟수 = <% out.println(count); %></p> --%>

	<%-- 표현식 : Java의 변수값, 연산결과값, 메소드 반환값등을 클라이언트에게 문자열로 전달하기 위한 영역 --%>
	<p>JSP 문서의 요청 횟수 = <%=count %></p>
</body>
</html>