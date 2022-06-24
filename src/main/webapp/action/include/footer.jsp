<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//스레드가 이동된 JSP 문서(footer.jsp)는 클라이언트의 요청 JSP 문서(index.jsp)의 request 객체와
	//response 객체를 제공받아 사용 가능    
	// => 스레드가 이동된 JSP 문서에서 request 객체와 response 객체의 사용 제한 발생
	
	//문제)스레드가 이동된 JSP 문서에서는 request 객체에 대한 리퀘스트 메세지 관련 정보 변경 불가능
	// => request.setCharacterEncoding() 메소드를 이용한 리퀘스트 메세지 몸체부의 캐릭터셋 변경 불가
	//해결)클라이언트의 요청 JSP 문서에서 리퀘스트 메세지 관련 정보 변경 가능
	//request.setCharacterEncoding("utf-8");//메소드 미동작
	String master=request.getParameter("master");
	
	if(master==null) {
		//문제)스레드가 이동된 JSP 문서에서는 response 객체를 이용하여 클라이언트에게 에러코드나 
		//URL 주소 전달 불가능 - 에러코드나 URL 주소를 클라이언트가 아닌 요청 JSP 문서로 전달(무의미)
		//해결)자바스크립트를 이용하여 응답 처리
		response.sendError(HttpServletResponse.SC_BAD_REQUEST);//메소드 미동작
		return;
	}
%>    
<hr>
<p>Copyright © Itwill Corp. All rights reserved.</p>
<p>관리자 : <%=master %></p>