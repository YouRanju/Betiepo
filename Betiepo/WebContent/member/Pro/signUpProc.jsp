<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<head>
	<link rel="shortcut icon" href="../img/logo.png">
	<title>Betiepo 회원가입을 축하합니다.</title>
</head> 

<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String pwd = request.getParameter("pwd");
%>

	<%= name %>/<%= email %>/<%= pwd %>
	
<!-- DB 연동하세요 -->

<body>
	<form action="../View/login.jsp" method="post">
		<input type="submit" value="로그인화면으로">
	</form>
</body>