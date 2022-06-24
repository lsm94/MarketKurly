<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 전달값에 따라 서로 다른 JSP 문서의 응답결과를 클라이언트에게 전달되도록 스레드를 이동하는 JSP 문서 --%>
<%
	String category=request.getParameter("category");

	if(category==null) {
		//클라이언트에게 URL 주소가 전달되도록 응답 처리
		// => URL 주소를 전달받은 클라이언트는 서버에게 해당 URL 주소의 JSP 문서 요청
		// => 클라이언트 브라우저의 요청 URL 주소 변경되며 새로운 JSP 문서의 응답결과를 제공받아 출력
		response.sendRedirect("main.jsp");//라다이렉트 이동
		return;
	}
	
	//전달값을 이용하여 스레드가 이동될 JSP 문서 경로를 생성하여 저장
	String forwardFilePath=category+".jsp";
%> 

<%-- forward ActionTag : JSP 문서에서 page 속성의 속성값으로 설정된 JSP 문서로 스레드를 이동시켜
명령 실행 후 처리 결과를 클라이언트에 전달(응답)하는 기능을 구현한 태그 --%>
<%-- 형식) <jsp:forward page="JSP"></jsp:forward> or <jsp:forward page="JSP"/> --%>
<%-- => page 속성값으로 표현식(Expression) 사용 가능 --%>
<%-- 포워드 이동 : 요청 JSP 문서에서 응답 JSP 문서로 스레드를 이동하여 응답 처리 --%>
<%-- => 클라이언트에 상관없이 서버측에서 이동 - 클라이언트 브라이저의 요청 URL 주소 미변경 --%>
<jsp:forward page="<%=forwardFilePath %>"/>