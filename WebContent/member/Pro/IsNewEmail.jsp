<%@page import="java.io.PrintWriter"%>
<%@page import="jsp.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberDAO test = new MemberDAO();
	String email = request.getParameter("email");
	boolean IsNew = test.IsNewEmail(email);
	
	PrintWriter script = response.getWriter();
	if(IsNew){
		script.println("<script>");
		script.println("alert('이미 존재하는 이메일 입니다.');");
		script.println("location.href='../View/signUp.jsp';");
		script.println("</script>");
		return;
	}
%>