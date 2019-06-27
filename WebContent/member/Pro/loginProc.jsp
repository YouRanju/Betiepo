<%@page import="java.io.PrintWriter"%>
<%@page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8");
	PrintWriter script = response.getWriter();
	script.println("<script>");
	
	String email = request.getParameter("email");
	String pw = request.getParameter("pw");
	
	UserDAO userDAO = new UserDAO();
	int result = userDAO.login(email, pw);

	switch(result) {
	case 1: // success login
		session.setAttribute("isLogin", userDAO.getUserName(email)); 
		session.setAttribute("userEmail", email);
		break;
	case 0: // does not correct pw
		script.println("alert('비밀번호를 잘못 입력 하셨습니다. 다시 확인해 주십시오.')");
		break;
	case -1: // there no email
		script.println("alert('존재하지 않는 이메일입니다.')");
		break;
	case -2: // db error
		script.println("alert('DB 에러'); window.location.href='main.jsp';");
		break;
	}

	script.println("location.href='../../main.jsp'");
	script.println("</script>");
%>
	