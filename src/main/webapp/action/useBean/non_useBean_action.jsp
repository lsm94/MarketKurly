<%@page import="xyz.itwill.bean.Hewon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 입력페이지(non_useBean_form.jsp)의 전달값을 반환받아 내장객체의 속성값으로 저장하고
출력페이지(non_useBean_display.jsp)로 포워드 이동하는 JSP 문서 --%>    
<%
	//비정상적인 요청에 대한 응답 처리
	if(request.getMethod().equals("GET")) {
		response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
		return;
	}

	//리퀘스트 메세지 몸체부에 저장되어 전달된 값에 대한 캐릭터셋 변경
	request.setCharacterEncoding("utf-8");
	
	//전달값을 반환받아 저장
	String name=request.getParameter("name");
	String phone=request.getParameter("phone");
	String address=request.getParameter("address");
	
	//JavaBean 클래스로 객체를 생성하여 전달값으로 필드값 변경
	Hewon hewon=new Hewon();
	hewon.setName(name);	
	hewon.setPhone(phone);	
	hewon.setAddress(address);	
	
	//Java를 이용하여 다른 JSP 문서로 응답되도록 구현하는 방법
	// => 리다이렉트 이동과 포워드 이동
	
	/*
	//리다이렉트 이동 : 클라이언트에게 URL 주소를 전달하여 다른 JSP 문서를 요청시켜 응답 처리
	// => 클라이언트 브라우저의 요청 URL 주소 변경 - 클라이언트를 이용하여 JSP 페이지 이동
	// => session 내장객체의 속성값으로 객체를 저장시켜 응답 JSP 문서에서 반환받아 사용 가능 
	// => 응답 JSP 문서에서는 session 내장객체의 속성값을 객체로 반환 받은 후 제거
	session.setAttribute("hewon", hewon);//session Scope
	response.sendRedirect("non_useBean_display.jsp");//리다이렉트 이동
	*/
	
	//포워드 이동 : 요청 JSP 문서에서 응답 JSP 문서로 스레드를 이동시켜 응답 처리
	// => 클라이언트 브라우저의 요청 URL 주소 미변경 - 서버에서 JSP 문서간의 페이지 이동
	// => request 내장객체의 속성값으로 객체를 저장시켜 응답 JSP 문서에서 반환받아 사용 가능 
	// => 응답 JSP 문서외에 다른 JSP 문서에서는 request 내장객체의 속성값 사용 불가능
	request.setAttribute("hewon", hewon);//request Scope
	//포워드 이동하기 위한 Java 명령 - forward ActionTag와 동일한 기능을 제공하는 명령
	//request.getRequestDispatcher(String url) : URL 주소가 저장된 RequestDispatcher 객체를 반환하는 메소드
	//RequestDispatcher 객체 : 다른 웹프로그램으로 스레드를 이동하기 위한 기능을 제공하는 객체
	// => 스레드가 이동되기 위한 웹프로그램의 URL 주소가 반드시 저장
	//RequestDispatcher.forward(ServletRequest request, ServletResponse response) : 매개변수로
	//요청 웹프로그램의 request 객체와 response 객체를 전달받아 포워드 이동하는 메소드
	request.getRequestDispatcher("non_useBean_display.jsp").forward(request, response);	
%>