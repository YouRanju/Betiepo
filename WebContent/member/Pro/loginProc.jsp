<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- DB 연동 하세요 -->

<%
	request.setCharacterEncoding("utf-8");
	
	String email = request.getParameter("email");
	String pw = request.getParameter("pw");
	String msg = "";
	
	if(email != null && pw != null) {
		session.setAttribute("isLogin", email);
	}
	
	response.sendRedirect("../../main.jsp");
%>
	