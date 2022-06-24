<%@page import="xyz.itwill.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 로그인 사용자의 정보를 클라이언트에게 전달하는 JSP 문서 --%>
<%-- => 로그인 사용자만 요청 가능한 JSP 문서 --%>
<%--
	//세션에 저장된 권한 관련 정보(회원정보)를 반환받아 저장
	MemberDTO loginMember=(MemberDTO)session.getAttribute("loginMember");

	//비로그인 사용자인 경우 - 비정상적인 요청에 대한 응답 처리
	if(loginMember==null) {
		//에러페이지로 이동
		out.println("<script type='text/javascript'>");
		out.println("location.href='index.jsp?workgroup=error&work=error_400';");
		out.println("</script>");
		return;		
	}
--%>
<%@include file="/security/login_check.jspf" %>

<style type="text/css">
#detail {
	width: 500px;
	margin: 0 auto;
	text-align: left;
}

#link {
	font-size: 1.1em;
}

#link a:hover {
	color: orange;
}
</style>

<h1>내정보</h1>
<div id="detail">
	<p>아이디 = <%=loginMember.getId() %></p>
	<p>이름 = <%=loginMember.getName() %></p>
	<p>이메일 = <%=loginMember.getEmail() %></p>
	<p>전화번호 = <%=loginMember.getMobile() %></p>
	<p>주소 = [<%=loginMember.getZipcode() %>]<%=loginMember.getAddress1() %> <%=loginMember.getAddress2() %></p>
	<p>회원가입날짜 = <%=loginMember.getJoinDate() %></p>
	<p>마지막 로그인 날짜 = <%=loginMember.getLastLogin() %></p>
</div>

<div id="link">
	<a href="index.jsp?workgroup=member&work=password_confirm&action=modify">[회원정보변경]</a>&nbsp;&nbsp;
	<a href="index.jsp?workgroup=member&work=password_confirm&action=remove">[회원탈퇴]</a>&nbsp;&nbsp;
</div>









