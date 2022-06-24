<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="page_error.jsp"%> --%>
<%-- [web.xml] 파일에서 모든 웹프로그램에서 발생되는 요청에러코드(4XX) 또는 실행에러코드(5XX)  
전달 대신 응답할 에러페이지 설정 가능 - 클라이언트의 요청 URL 주소 미변경 --%>    
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%
	String text="ABCDEFG";
	//String text=null;
	
	int num=10/0;
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1>page Directive - errorPage</h1>
	<hr>
	<p>JSP 문서 실행시 예외가 발생된 경우 클라이언트에게 500 에러코드 대신 에러페이지로 응답하는 
	웹문서를 속성값으로 설정하기 위한 속성 - 클라이언트의 요청 URL 주소 미변경</p>
	<hr>
	<p>문자열의 문자갯수 = <%=text.length() %></p>
</body>
</html>