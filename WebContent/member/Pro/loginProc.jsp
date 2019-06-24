<%@page import="java.io.PrintWriter"%>
<%@page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8");

	String email = request.getParameter("email");
	String pw = request.getParameter("pw");
	
	UserDAO userDAO = new UserDAO();
	int result = userDAO.login(email, pw);
	
	PrintWriter script = response.getWriter();
	script.println("<script>");
	switch(result) {
	case 1: // success login
		session.setAttribute("isLogin", email);
		response.sendRedirect("../../main.jsp");
		break;
	case 0: // does not correct pw
		script.println("alert('비밀번호가 틀립니다.')");
		script.println("location.href='../../main.jsp'");
		break;
	case -1: // there no email
		script.println("alert('존재하지 않는 이메일입니다.')");
		script.println("location.href='../../main.jsp'");
		break;
	case -2: // db error
		script.println("alert('DB가 망했습니다.')");
		script.println("location.href='../../main.jsp'");
		break;
	}
	script.println("</script>");
%>
	