<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1>include Directive</h1>
	<hr>
	<p>서버에 존재한는 문서파일의 코드를 읽어 현재 JSP 문서에 포함하는 지시어 - 정적포함</p>
	<hr>
	<%-- 
	<p>클라이언트에게 응답되는 아주 중요한 내용</p>
	<p>클라이언트에게 응답되는 아주 중요한 내용</p>
	<p>클라이언트에게 응답되는 아주 중요한 내용</p>
	<p>클라이언트에게 응답되는 아주 중요한 내용</p>
	<p>클라이언트에게 응답되는 아주 중요한 내용</p>
	<p>클라이언트에게 응답되는 아주 중요한 내용</p>
	<p>클라이언트에게 응답되는 아주 중요한 내용</p>
	<p>클라이언트에게 응답되는 아주 중요한 내용</p>
	<p>클라이언트에게 응답되는 아주 중요한 내용</p>
	--%>
	
	<%-- include Directive의 file 속성값으로 동일 서버의 저장된 문서파일의 URL 주소 설정 --%>
	<%-- => file 속성값으로 설정된 문서파일이 없는 경우 에러 발생 --%>
	<%-- => 문서파일의 코드를 include Directive 명령 위치에 포함 --%>
	<%@include file="include_sub.jspf" %>
</body>
</html>








