<%@page import="java.io.PrintWriter"%>
<%@page import="jsp.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8");
	
	String email = request.getParameter("email");
	MemberDAO memberDao = new MemberDAO();

 	PrintWriter script = response.getWriter();
	if(!memberDao.IsNewEmail(email))
	{
 		script.println("<script>");
 		script.println("alert('이미 존재하는 이메일 입니다.');");
 		script.println("</script>");
 		script.close();
	} else {
 		script.println("<script>");
 		script.println("alert('사용가능한 이메일입니다.');");
 		script.println("</script>");
 		script.close();
	}
%>