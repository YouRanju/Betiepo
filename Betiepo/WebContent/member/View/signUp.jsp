<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1.0">

<link rel="shortcut icon" href="../../img/logo.png">
<title>Betiepo-SignUp</title>

<link rel="stylesheet" href="../../css/reset.css?ver=1" />
<link rel="stylesheet" href="../../css/signup.css?ver=1" />

<script>
	function emcheck() {
		if(document.signupform.name.value=="") 
		{	
			alert("이름을 입력하십시오.");
			document.signupform.name.focus();
			return;
		} else if(document.signupform.email.value=="") {	
			alert("이메일을 입력하십시오.");
			document.signupform.name.focus();
			return;
		} else if (!document.signupform.email.value.includes('@')) {
			alert("이메일 형식으로 입력해 주십시오.");
			document.signupform.email.focus();
			return;
		}
		
		/* 인증번호 발송 코드(또는 페이지) 넣기 */
		
		document.signupform.certify.disabled = false;
	}
	
	function checking() {
		if(document.signupform.name.value=="") 
		{	
			alert("이름을 입력하십시오.");
			document.signupform.name.focus();
			return;
		} else if(document.signupform.email.value=="") {	
			alert("이메일을 입력하십시오.");
			document.signupform.name.focus();
			return;
		} else if (!document.signupform.email.value.includes('@')) {
			alert("이메일 형식으로 입력해 주십시오.");
			document.signupform.email.focus();
			return;
		} else if(document.signupform.certify.value=="") 
		{	
			alert("인증번호를 입력하십시오.");
			document.signupform.certify.focus();
			return;
		} else if(document.signupform.pwd.value=="") {
			alert("비밀번호를 입력하십시오.");
			document.signupform.pwd.focus();
			return;
		}
		
		document.signupform.submit();
	}
</script>

</head>
<body>
	<div class="container">
		<a href="login.jsp"><h1>BETIEPO</h1></a>
		<form action="../Pro/signUpProc.jsp" method="Post" name="signupform">
			<label>이름</label> <span>이 이름은 마이페이지에서 변경하실 수 있습니다.</span> 
			<input type="text" placeholder="이름을 입력해 주세요." name='name' required> <br> 
			<label>이메일</label> <span>당신의 아이디이자 본인인증 수단입니다.</span> <br> 
			<input type="email" class="email" placeholder="이메일을 입력해 주세요." name='email' required> 
			<input type="button" class="bu" value="인증하기" onclick="emcheck()"><br> 
			<label>인증문자</label> <span>입력하신 이메일로 보내진 인증문자를 입력해주십시오.</span> 
			<input type="text" placeholder="인증문자를 입력해 주세요." name='certify' id="certify" disabled> <br> 
			<label>비밀번호</label> <span>비밀번호는 숫자와 소문자를 포함하여 8자 이상이어야 합니다.</span> 
			<input type="password" placeholder="비밀번호를 입력해 주세요." name='pwd' required> <br> 
			<input type="button" class="sum_bu" value="회원가입" onclick = "checking()">
		</form>
	</div>
</body>
</html>