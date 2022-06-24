<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 클라이언트의 모든 요청에 대한 응답 결과를 제공하기 위한 JSP 문서 - 템플릿 페이지 --%>
<%-- => Content 영역은 템플릿 페이지(index.jsp) 요청시 전달되는 값에 따라 서로 다른 JSP 문서의
실행 결과를 가져와 동적으로 포함하여 응답 처리 --%>
<%
	//템플릿 페이지 요청시 전달된 값을 반환받아 저장
	String workgroup=request.getParameter("workgroup");//작업 폴더명
	if(workgroup==null) {
		workgroup="main";
	}

	String process=request.getParameter("process");//작업 파일명(JSP 파일명)
	if(process==null) {
		process="main";
	}
	
	//반환받은 전달값을 이용하여 Content 영역에 응답결과를 제공하여 포함시킬 JSP 문서의 경로 생성
	String contentFilePath=workgroup+"/"+process+".jsp";
	System.out.println("contentFilePath = "+contentFilePath);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
<style type="text/css">
div {
	margin: 5px;
	padding: 5px;
}

#header {
	height: 200px;
	border: 1px solid red;
}

#header h1 {
	text-align: center;
}

#menu {
	font-size: 1.5em;
	text-align: right;
}

a, a:visited {
	text-decoration: none;
	color: black;
}

#menu a:hover {
	color: orange;
}

#content {
	min-height: 500px;
	border: 1px solid green;
	text-align: center;
}

#footer {
	height: 150px;
	border: 1px solid blue;
	text-align: center;
	font-size: 1.2em;
}
</style>
</head>
<body>
	<div id="header">
		<h1><a href="index.jsp?workgroup=main&process=main">쇼핑몰</a></h1>
		<div id="menu">
			<a href="index.jsp?workgroup=company&process=history">회사연혁</a>&nbsp;&nbsp;
			<a href="index.jsp?workgroup=product&process=list">제품목록</a>&nbsp;&nbsp;
			<a href="index.jsp?workgroup=order&process=display">구매내역</a>&nbsp;&nbsp;
			<a href="index.jsp?workgroup=review&process=print">사용후기</a>&nbsp;&nbsp;
		</div>
	</div>
	
	<div id="content">
		<%-- <h2>메인 페이지</h2> --%>
		<%-- 전달값에 의해 작성된 JSP 문서로 스레드를 이용하여 실행 결과를 응답받아 Content 영역에 포함 --%>
		<%-- => 스레드가 이동될 JSP 문서가 없는 경우 에러 발생 - 500(ServletException 발생) --%>
		<jsp:include page="<%=contentFilePath %>"/>
	</div>
	
	<div id="footer">
		<div>
			<a href="index.jsp?workgroup=main&process=terms">이용약관</a>&nbsp;&nbsp;&nbsp;
			<a href="index.jsp?workgroup=main&process=info">개인정보</a>&nbsp;&nbsp;&nbsp;
			<a href="index.jsp?workgroup=main&process=center">고객센터</a>&nbsp;&nbsp;&nbsp;
		</div>
		<p>Copyright © Itwill Corp. All rights reserved.</p>
	</div>
</body>
</html>













