<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1.0">

<link rel="shortcut icon" href="../../img/logo.png">
<title>Betiepo-Login</title>

<link rel="stylesheet" href="../../css/reset.css?ver=1" />
<link rel="stylesheet" href="../../css/login.css" />

</head>
<body>
	<header id="header">
		<div class="container">
			<div class="image">
				<img src="../../img/logo.png">
			</div>
			<div class="text title" style="color: white; font-weight: bold;">
				BETIEPO</div>
			<div class="text summary">채우기만 해도 완성되는 포트폴리오</div>
			<form action="../Pro/loginProc.jsp" method="POST" class="login">
				<label>이메일</label> <input name='email' type="email"
					placeholder="이메일을 입력해주세요" required> <br>
				<label>비밀번호</label> <input name='pw' type="password"
					placeholder="비밀번호를 입력해주세요" required> <br> <input
					type="submit" value="접속하기"> <br> 
				<a class="Signup" href="signUp.jsp">회원가입</a>
			</form>
		</div>
	</header>
</body>
</html>