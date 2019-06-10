<%@page import="java.io.PrintWriter"%>
<%@page import="jsp.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1.0">

<link rel="shortcut icon" href="../img/logo.png">
<title>Betiepo-SignUp</title>

<link rel="stylesheet" href="../../css/reset.css" />
<link rel="stylesheet" href="../../css/signup.css" />
</head>
<body>
	<div class="container">
		<h1>BETIEPO</h1>
		<form action="../Pro/signUpProc.jsp" method="Post">
			<label>이름</label> <span>이 이름은 마이페이지에서 변경하실 수 있습니다.</span> 
			<input type="text" placeholder="이름을 입력해 주세요." name='name' required> <br> 
			<label>이메일</label> <span>당신의 아이디이자 본인인증 수단입니다.</span> <br>
			<form action="../Pro/Sertified.jsp" method="post">
				<form action="../Pro/IsNewEmail.jsp" method="post">
					<input type="email" class="email" placeholder="이메일을 입력해 주세요." name='email' style="width: 200px;" required>
					<input type="submit" value="중복확인"><br>
				</form>
				<input type="submit" value="인증문자"><br> 
			</form>
			<label>인증문자</label> <span>입력하신 이메일로 보내진 인증문자를 입력해주십시오.</span> 
			<input type="text" placeholder="인증문자를 입력해 주세요." name='certify' disabled> <br> 
			<label>비밀번호</label> <span>비밀번호는 숫자와 소문자를 포함하여 8자 이상이어야 합니다.</span> 
			<input type="password" placeholder="비밀번호를 입력해 주세요." name='pwd' required> <br> 
			<input type="submit" value="회원가입">
		</form>
	</div>

</body>
</html>