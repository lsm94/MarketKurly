<%@page import = "dao.signUpDAO"%>
<%@page import = "dto.signUpDTO"%>
<%@page import = "util.Utility"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    if(request.getMethod().equals("GET")){
    		out.println("<script type='text/javascript'>");
    		out.println("location.href='index.jsp?folder=error&category=error_400';");
    		out.println("</script>");
    		return;
    	}
       
    	String id = request.getParameter("id");
    	String password = Utility.encrypt(request.getParameter("password"));
    	String name = request.getParameter("name");
    	String email = request.getParameter("email");
    	String mobile = request.getParameter("mobile1") + "-" + request.getParameter("mobile2") + "-"
    	+ request.getParameter("mobile3");
    	String zipcode = request.getParameter("zipcode");
    	String address1 = request.getParameter("address1");
    	String address2 = Utility.stripTag(request.getParameter("address2"));
    	
    	signUpDTO member=new signUpDTO();
    	member.setId(id);
    	member.setPassword(password);
    	member.setName(name);
    	member.setEmail(email);
    	member.setMobile(mobile);
    	member.setZipcode(zipcode);
    	member.setAddress1(address1);
    	member.setAddress2(address2);
    	
    	signUpDAO.getDAO().insertMember(member);
    	
    	out.println("<script type='text/javascript'>");
    	out.println("location.href='index.jsp?folder=login&category=login';");
    	out.println("</script>");
    %>