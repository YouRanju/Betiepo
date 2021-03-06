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

<link rel="stylesheet" href="../../css/reset.css?ver=1" />
<link rel="stylesheet" href="../../css/signup.css" />
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  <script>
  function pwdCheckFunction() {
	  var pwd1 = $("#pw").val();
	  var pwd2 = $("#pw2").val();
	  if(pwd1 != pwd2) {
		  $("#pwdCheck").html('비밀번호가 일치하지 않습니다.');
		  $("#pwdCheck").css("color", "red");
	  }
	  else $("#pwdCheck").html('');
  }
  </script>
</head>
<body>
	<div class="container">
		<a href="login.jsp"><h1>BETIEPO</h1></a>
		<form action="../Pro/signUpProc.jsp" method="Post">
			<label>이름</label> <span>이 이름은 마이페이지에서 변경하실 수 있습니다.</span> 
			<input type="text" placeholder="이름을 입력해 주세요." name='name' required> <br> 
			<label>이메일</label> <span>당신의 아이디이자 본인인증 수단입니다.</span> <br> 
			<input type="email" class="email" placeholder="이메일을 입력해 주세요." name='email' required> 
			<!-- T.T
			<input type="button" value="인증하기"><br> 
			<label>인증문자</label> <span>입력하신 이메일로 보내진 인증문자를 입력해주십시오.</span> 
			<input type="text" placeholder="인증문자를 입력해 주세요." name='certify' disabled>--> <br>  
			<label>비밀번호</label> <span>비밀번호는 숫자와 소문자를 포함하여 8자 이상이어야 합니다.</span> 
			<input type="password" placeholder="비밀번호를 입력해 주세요." name='pw' id="pw" onkeyup="pwdCheckFunction();" required> <br> 
			<input type="password" placeholder="비밀번호를 입력해 주세요." name='pw2' id="pw2" onkeyup="pwdCheckFunction();" required> <br> 
			<p id="pwdCheck"></p>
			<input type="submit" value="회원가입">
		</form>
	</div>
</body>
</html>