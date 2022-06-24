<%@page import="xyz.itwill.dao.StudentDAO"%>
<%@page import="xyz.itwill.dto.StudentDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 출력페이지(displayStudent.jsp)에서 전달된 학번을 반환받아 STUDENT 테이블에 저장된 해당 학번의
학생정보를 검색하여 입력태그의 초기값으로 설정하고 변경값을 입력받기 위한 JSP 문서 --%>
<%-- => [학생변경]를 클릭한 경우 form 태그를 이용하여 학생정보 변경페이지(updateStudent.jsp)를
post 방식으로 요청해 입력값을 전달하여 이동 - 입력값 검증 --%>
<%-- => [학생목록]를 클릭한 경우 학생목록 출력페이지(displayStudent.jsp)를 요청하여 이동 --%>
<%
	//비정상적인 요청에 대한 응답 처리
	if(request.getParameter("no")==null) {//전달값(학번)이 없는 경우
		response.sendError(HttpServletResponse.SC_BAD_REQUEST);
		return;
	}
	
	//전달값을 반환받아 저장
	int no=Integer.parseInt(request.getParameter("no"));
	
	//학번을 전달받아 STUDENT 테이블에 저장된 학생정보를 검색하여 반환하는 DAO 클래스의 메소드 호출
	StudentDTO student=StudentDAO.getDAO().selectStudent(no);
	
	if(student==null) {//검색된 학생정보가 없는 경우 - 비정상적인 요청에 대한 응답 처리
		response.sendError(HttpServletResponse.SC_BAD_REQUEST);
		return;
	}
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP</title>   
</head>
<body>
	<h1 align="center">학생정보 변경</h1>
	<hr>
	<form name="studentForm">
	<%-- 학생정보에서 학번(식별자)은 사용자로부터 변경값을 입력받지 않고 그대로 처리페이지로 전달 --%>
	<%-- => 학번을 hidden 타입의 입력태그를 사용하여 전달하거나 학번의 입력태그를 읽기 전용으로 설정하여 전달 --%>
	<input type="hidden" name="no" value="<%=student.getNo()%>">
	<table align="center" border="1" cellpadding="1" cellspacing="0" width="300">
		<tr height="40">
			<th bgcolor="yellow" width="100">학생번호</th>
			<td width="200" align="center">
				<%-- <input type="text" name="no" value="<%=student.getNo()%>" readonly="readonly"> --%>
				<%=student.getNo() %>
			</td>
		</tr>
		<tr height="40">
			<th bgcolor="yellow" width="100">이름</th>
			<td width="200" align="center">
				<input type="text" name="name" value="<%=student.getName()%>">
			</td>
		</tr>
		<tr height="40">
			<th bgcolor="yellow" width="100">전화번호</th>
			<td width="200" align="center">
				<input type="text" name="phone" value="<%=student.getPhone()%>">
			</td>
		</tr>
		<tr height="40">
			<th bgcolor="yellow" width="100">주소</th>
			<td width="200" align="center">
				<input type="text" name="address" value="<%=student.getAddress()%>">
			</td>
		</tr>
		<tr height="40">
			<th bgcolor="yellow" width="100">생년월일</th>
			<td width="200" align="center">
				<input type="text" name="birthday" value="<%=student.getBirthday().substring(0, 10)%>">
			</td>
		</tr>
		<tr height="40">
			<td width="200" colspan="2" align="center">
				<input type="button" value="학생변경" onclick="submitCheck();">
				<input type="reset" value="초기화">
				<input type="button" value="학생목록" onclick="location.href='displayStudent.jsp';">
			</td>
		</tr>
	</table>
	</form>
	<script type="text/javascript">
	studentForm.num.focus();
	
	function submitCheck() {
		if(studentForm.name.value=="") {
			alert("이름을 입력해 주세요.");
			studentForm.name.focus();
			return;
		}

		if(studentForm.phone.value=="") {
			alert("전화번호을 입력해 주세요.");
			studentForm.phone.focus();
			return;
		}

		if(studentForm.address.value=="") {
			alert("주소을 입력해 주세요.");
			studentForm.address.focus();
			return;
		}

		if(studentForm.birthday.value=="") {
			alert("생년월일을 입력해 주세요.");
			studentForm.birthday.focus();
			return;
		}

		studentForm.method="POST";
		studentForm.action="updateStudent.jsp";
		studentForm.submit();
	} 
	</script>
</body>
</html>