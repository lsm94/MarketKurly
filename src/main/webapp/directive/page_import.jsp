<%-- page Directive에서는 동일한 속성을 중복 선언한 경우 JSP 문서 실행시 500 에러 발생 --%>
<%-- => import 속성 제외 --%>
<%-- <%@page import="java.util.ArrayList, java.util.List"%> --%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%
	//java.util.List<java.lang.String> nameList=new java.util.ArrayList<java.lang.String>();
	List<String> nameList=new ArrayList<String>();
	
	nameList.add("홍길동");
	nameList.add("임꺽정");
	nameList.add("전우치");
	nameList.add("일지매");
	nameList.add("장길산");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1>page Directive - import</h1>
	<hr>
	<p>JSP 문서에서 사용할 클래스(인터페이스)를 패키지로 명확하게 표현하여 제공하기 위한 속성</p>
	<hr>
	<ul>
	<% for(String name:nameList) { %>
		<li><%=name %></li>
	<% } %>
	</ul>
</body>
</html>




