<%@page import="xyz.itwill.dao.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 출력페이지(displayStudent.jsp)에서 전달된 학번을 반환받아 STUDENT 테이블에 저장된 해당 
학번의 학생정보를 삭제하고 학생목록 출력페이지(displayStudent.jsp)로 이동되도록 클라이언트에게 
URL 주소를 전달하는 JSP 문서 --%>    
<%
	//비정상적인 요청에 대한 응답 처리
	if(request.getParameter("no")==null) {//전달값(학번)이 없는 경우
		response.sendError(HttpServletResponse.SC_BAD_REQUEST);
		return;
	}

	//전달값을 반환받아 저장
	int no=Integer.parseInt(request.getParameter("no"));
	
	//학번을 전달받아 STUDENT 테이블에 저장된 학생정보를 삭제하는 DAO 클래스의 메소드 호출
	int rows=StudentDAO.getDAO().deleteStudent(no);
	
	if(rows>0) {//삭제된 학생정보가 있는 경우 - 정상적인 요청에 대한 응답 처리
		response.sendRedirect("displayStudent.jsp");
	} else {//삭제된 학생정보가 없는 경우 - 비정상적인 요청에 대한 응답 처리
		response.sendError(HttpServletResponse.SC_BAD_REQUEST);
	}
%>