<%@page import="java.io.PrintWriter"%>
<%@page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="name" />
<jsp:setProperty name="user" property="email" />
<jsp:setProperty name="user" property="pw" />

<head>
	<link rel="shortcut icon" href="../img/logo.png">
	<title>Betiepo 회원가입을 축하합니다.</title>
</head> 

<body>
<%
	PrintWriter script = response.getWriter();
	script.println("<script>");

	UserDAO userDAO = new UserDAO();
	int result = userDAO.join(user);
	
	if(result == -1)
		script.println("alert('이미 존재하는 이메일입니다.')");
	else 
		script.println("alert('회원가입을 축하합니다.')");
		
	script.println("location.href='../../main.jsp'");
	script.println("</script>");
%>
</body>