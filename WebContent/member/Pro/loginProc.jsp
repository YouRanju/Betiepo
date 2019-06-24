<%@page import="java.io.PrintWriter"%>
<%@page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8");
	PrintWriter script = response.getWriter();
	script.println("<script>");
	String isLogin = null;
	if(session.getAttribute("isLogin") != null){
		isLogin = (String) session.getAttribute("isLogin");
	}
	if(isLogin != null) {
		script.println("alert('이미 로그인이 되어있습니다.')");
	}
	else {
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		
		UserDAO userDAO = new UserDAO();
		int result = userDAO.login(email, pw);
		
		
		switch(result) {
		case 1: // success login
			session.setAttribute("isLogin", email);
			break;
		case 0: // does not correct pw
			script.println("alert('비밀번호가 틀립니다.')");
			break;
		case -1: // there no email
			script.println("alert('존재하지 않는 이메일입니다.')");
			break;
		case -2: // db error
			script.println("alert('DB가 망했습니다.')");
			break;
		}
	}

	script.println("location.href='../../main.jsp'");
	script.println("</script>");
%>
	