<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	session.setAttribute("isMadeAlready", "false");
	
	response.sendRedirect("../../portfolioForm.jsp");
%>
	