<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String searchName = request.getParameter("searchName");
	
	//DB 연동 바람
%>
	<%= searchName %>

	<a href="../../main.jsp">돌아가기</a>