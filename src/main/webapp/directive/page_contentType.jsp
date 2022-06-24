<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> --%>
<%@ page language="java" contentType="application/msword; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
<style type="text/css">
table {
	border: 1px solid black;
	border-collapse: collapse;	
}

td {
	border: 1px solid black;
	text-align: center;
	width: 200px;
	padding: 2px;	
}
</style>
</head>
<body>
	<h1>page Directive - contentType</h1>
	<hr>
	<p>JSP 문서를 요청하여 응답 받을 수 있는 파일형식(MimeType)을 제공하기 위한 속성
	- 파일형식이 문서인 경우 캐릭터셋(CharacterSet - Encoding) 설정</p>
	<hr>
	<table>
		<tr>
			<td>학번</td><td>이름</td><td>주소</td>
		</tr>
		<tr>
			<td>1000</td><td>홍길동</td><td>서울시 강남구 역삼동</td>
		</tr>
		<tr>
			<td>2000</td><td>임꺽정</td><td>인천시 월미구 성당동</td>
		</tr>
		<tr>
			<td>3000</td><td>전우치</td><td>수원시 팔달구 구래동</td>
		</tr>
	</table>
</body>
</html>