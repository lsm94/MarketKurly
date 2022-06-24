<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	//요청 JSP 문서 및 스레드가 이동된 JSP 문서에 적용
	request.setCharacterEncoding("utf-8");

	//String headerFile="header.jspf";
	String headerFile="header.jsp";
	
	//JSP 문서 요청시 전달된 값을 반환받아 저장
	String category=request.getParameter("category");
	if(category==null) {//전달값이 없는 경우
		category="main";
	}
	
	//관리자 정보를 저장하기 위한 변수
	String master="";
	
	//전달값을 비교하여 변수에 Header 영역에 포함될 JSP 문서의 파일명 저장 및 관리자 정보 저장
	if(category.equals("main")) {
		headerFile="header_main.jsp";
		master="홍길동(hong@itwill.xyz)";
	} else if(category.equals("blog")) {
		headerFile="header_blog.jsp";
		master="임꺽정(lim@itwill.xyz)";
	} else if(category.equals("cafe")) {
		headerFile="header_cafe.jsp";
		master="전우치(choun@itwill.xyz)";
	} else {//비정상적인 요청
		response.sendError(HttpServletResponse.SC_BAD_REQUEST);
		return;
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<%-- Header 영역 --%>
	<%-- 
	<h1>메인 페이지</h1>
	<a href="index.jsp?category=main">메인</a>&nbsp;&nbsp;
	<a href="index.jsp?category=blog">블로그</a>&nbsp;&nbsp;
	<a href="index.jsp?category=cafe">카페</a>&nbsp;&nbsp;
	<hr>
	--%>
	
	<%-- include Directive : 외부파일(JSPF)의 코드(HTML 태그 및 Java Source)를 읽어와 포함 --%>
	<%-- => file 속성값으로 설정된 외부파일의 코드를 포함하여 응답 페이지 구현 --%>
	<%-- => 외부파일의 코드가 변경될 경우 JSP 문서가 변경된 것과 동일하므로 JSP 문서에 대한 서블릿 변환 발생 --%>
	<%-- => file 속성의 속성값으로 표현식(Expression) 사용 불가능 - 속성값으로 설정된 파일의 코드만 포함(정적포함) --%>
	<%-- <%@include file="header.jspf" %> --%>

	<%-- include ActionTag : 스레드가 이동된 JSP 문서의 응답결과(HTML 태그)를 얻어와 포함 --%>
	<%-- 형식) <jsp:include page="JSP"></jsp:include> or <jsp:include page="JSP"/> --%>
	<%-- => page 속성값으로 설정된 JSP 문서가 없는 경우 에러 발생(500) --%>
	<%-- => JSP 문서의 스레드를 page 속성값으로 설정된 JSP 문서로 이동시켜 처리결과를 가져와 포함하여 응답페이지 구현 --%>
	<%-- => 스레드가 이동된 JSP 문서가 변경되어도 현재 JSP 문서에 미영향 --%>
	<%-- => page 속성의 속성값으로 표현식(Expression) 사용 가능 
	- 표현식에서 사용된 변수에 저장값에 따라 서로 다른 JSP 문서의 응답결과를 가져와 포함(동적포함) --%>
	<%-- <jsp:include page="header.jsp"/> --%>
	<jsp:include page="<%=headerFile %>"/>

	<%-- Content 영역 --%>
	<p>요청에 의해 생성된 응답 결과</p>
	<p>요청에 의해 생성된 응답 결과</p>
	<p>요청에 의해 생성된 응답 결과</p>
	<p>요청에 의해 생성된 응답 결과</p>
	<p>요청에 의해 생성된 응답 결과</p>
	
	<%-- Footer 영역 --%>
	<%--
	<hr>
	<p>Copyright © Itwill Corp. All rights reserved.</p>
	<!-- <p>관리자 : 홍길동(hong@itwill.xyz)</p> -->
	<p>관리자 : <%=master %></p>
	--%>
	
	<%-- param ActionTag : 스레드가 이동된 JSP 문서로 값을 전달하는 태그 --%>
	<%-- => 리퀘스트 메세지의 몸체부에 값을 저장하여 스레드가 이동된 JSP 문서에게 전달 --%>
	<%-- => include 태그 또는 forward 태그의 자식태그로만 사용 가능 --%>
	<%-- 주의)include 태그 또는 forward 태그에 자식태그(param)를 제외한 코드가 존재할 경우 에러 발생 - JSP 주석 제외 --%>
	<jsp:include page="footer.jsp">
		<jsp:param value="<%=master %>" name="master"/>	
	</jsp:include>
</body>
</html>





