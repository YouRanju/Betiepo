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
<link rel="stylesheet" href="../../css/login.css?ver=1" />

<script>
	function checking() {
		if(document.loginform.email.value=="") 
		{	
			alert("이메일을 입력하십시오.");
			document.loginform.email.focus();
			return;
		} else if (!document.loginform.email.value.includes('@')) {
			alert("이메일 형식으로 입력해 주십시오.");
			document.loginform.email.focus();
			return;
		} else if(document.loginform.pw.value=="") {
			alert("비밀번호를 입력하십시오.");
			document.loginform.pw.focus();
			return;
		}
		
		document.loginform.submit();
	}
</script>

</head>
<body>
	<header id="header">
		<div class="container">
			<div class="image"><img src="../../img/logo.png"></div>
			<a href="login.jsp"><div class="text title" style="color: white; font-weight: bold;">BETIEPO</div></a>
			<div class="text summary">채우기만 해도 완성되는 포트폴리오</div>
			<form action="../Pro/loginProc.jsp" method="POST" class="login" name="loginform">
				<label>이메일</label> 
				<input name='email' type="email" placeholder="이메일을 입력해주세요" required> <br>
				<label>비밀번호</label> 
				<input name='pw' type="password" placeholder="비밀번호를 입력해주세요" required> <br> 
				<input type="button" value="접속하기" onclick="checking()"> <br> 
				<a class="Signup" href="signUp.jsp">회원가입</a>
			</form>
		</div>
	</header>
</body>
</html>