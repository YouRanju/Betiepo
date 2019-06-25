<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- DB연동 필요 -->
저장되었습니다.
<%
	/* INSERT 또는 UPDATE */
	session.setAttribute("isMadeAlready", "true");
	response.sendRedirect("../../portfolioForm.jsp");
%>