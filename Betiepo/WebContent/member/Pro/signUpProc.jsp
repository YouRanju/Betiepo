<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<head>
	<link rel="shortcut icon" href="../img/logo.png">
	<title>Betiepo 회원가입을 축하합니다.</title> <!-- <<이거 임시 타이틀임... -->
</head> 

<!-- DB 연동하세요 -->

<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String pwd = request.getParameter("pwd");
	
	/* 
	DB 연동하는 곳  
	ex)
	INSERT INTO usertbl VALUES(name(변수임), email(변수임), pwd(변수임));
	*/
%>

<!-- 임시테스트용 -->
<%= name %>/<%= email %>/<%= pwd %>
	
<body>
	<form action="../View/login.jsp" method="post">
		<input type="submit" value="로그인화면으로">
	</form>
</body>