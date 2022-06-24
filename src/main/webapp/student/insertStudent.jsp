<%@page import="xyz.itwill.dao.StudentDAO"%>
<%@page import="xyz.itwill.dto.StudentDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 입력페이지(insertFormStudent.jsp)에서 전달된 학생정보를 반환받아 STUDENT 테이블에 삽입하고 
학생목록 출력페이지(displayStudent.jsp)로 이동되도록 클라이언트에게 URL 주소를 전달하는 JSP 문서 --%>    
<%
	//비정상적인 요청에 대한 응답 처리
	if(request.getMethod().equals("GET")) {
		session.setAttribute("message", "비정상적인 방법으로 페이지를 요청 하였습니다.");
		response.sendRedirect("insertFormStudent.jsp");
		return;
	}

	//리퀘스트 메세지 몸체부에 저장되어 전달된 값에 대한 캐릭터셋 변경 
	// => JSP 문서를 POST 방식으로 요청하여 전달된 값에 대한 문자형태 변경
	request.setCharacterEncoding("utf-8");
	
	//전달값을 반환받아 저장
	int no=Integer.parseInt(request.getParameter("no"));
	String name=request.getParameter("name");
	String phone=request.getParameter("phone");
	String address=request.getParameter("address");
	String birthday=request.getParameter("birthday");
	
	//DTO 객체를 생성하여 반환받은 전달값으로 필드값 변경
	StudentDTO student=new StudentDTO();
	student.setNo(no);
	student.setName(name);
	student.setPhone(phone);
	student.setAddress(address);
	student.setBirthday(birthday);
	
	//입력되어 전달된 학번이 STUDENT 테이블에 저장된 기존 학생정보의 학번으로 존재할 경우 
	//학생정보 입력페이지(insertFormStudent.jsp)로 이동되도록 URL 주소 전달 - 리다이렉트 이동
	//학번을 전달받아 STUDENT 테이블에 저장된 학생정보를 검색하여 반환하는 DAO 클래스의 메소드 호출
	// => null 반환 : 학생정보 미검색 - 전달된 학번이 중복되지 않아 사용 가능
	// => StudentDTO 객체 반환 : 학생정보 검색 - 전달된 학번이 중복되어 사용 불가능
	if(StudentDAO.getDAO().selectStudent(no)!=null) {//검색된 학생정보가 있는 경우
		session.setAttribute("message", "이미 사용중인 학번을 입력하여 저장되지 않았습니다.");
		session.setAttribute("student", student);
		response.sendRedirect("insertFormStudent.jsp");
		return;
	}
	
	//STUDENT 테이블에 학생정보를 삽입하는 DAO 클래스의 메소드 호출
	StudentDAO.getDAO().insertStudent(student);
	
	//클라이언트에게 URL 주소 전달 - 리다이렉트 이동
	response.sendRedirect("displayStudent.jsp");
%>











