<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1>내장객체(Implicit Object)</h1>
	<hr>
	<p>WAS 프로그램에 의해 JSP 문서에 기본적으로 제공되는 Java 객체</p>
	<hr>
	<p>page(HttpJspPage) : JSP 문서정보를 제공하기 위한 객체</p>
	<p>config(ServletConfig) : WAS 프로그램에 등록된 값을 제공하기 위한 객체</p>
	<p>out(JspWriter) : 클라이언트에게 응답될 파일을 생성하기 위한 객체(출력스트림)</p>
	<p>request(HttpServletRequest) : 클라이언트의 요청 정보를 제공하기 위한 객체</p>
	<p>response(HttpServletResponse) : 클라이언트의 응답 정보를 제공하기 위한 객체</p>
	<p>session(HttpSession) : 클라이언트와의 연결 지속성을 제공하기 위한 객체</p>
	<p>application(ServletContext) : 컨텍스트를 관리하는 정보를 제공하기 위한 객체 - WAS</p>
	<p>pageContext(PageContext) : JSP(웹프로그램) 작성에 필요한 객체를 생성하여 제공하기 위한 객체</p>
	<p>exception(Throwable) : JSP 문서 실행시 발생되는 예외를 저장하여 제공하기 위한 객체
	- page Directive의 isErrorPage 속성값을 [true]로 설정한 경우에만 제공</p>
</body>
</html>