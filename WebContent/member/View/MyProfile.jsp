<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/mypagecss.css">
<script src="mainPage/ClientPro/imageFile.js"></script>
</head>
<body>
	<div id="mypagecontent">
		<h1>My Page</h1>
		<form action="profileSave" method="POST" name="profileForm">
			<label for="pjimage">프로필 사진</label> <input type="image" src = "img/create.png" name="pjimage" onclick = "b(event)" onchange="img()"><br>
			<label for="nameK">이름</label><input type="text" id="nameK" name="nameK"> <br>
			<label for="nameE">영문이름</label><input type="text" id="nameE" name="nameE"> <br>
			<label for="email">이메일 </label><input type="text" id="email" name="email"> <br>
			<label for="pw">비밀번호 </label><input type="password" id="pw" name="pw"> <br>
			<label for="phone">전화번호</label> <input type="text" id="phone" name="phone"> <br>
		    <label for="intro">포부 한마디</label> <input type="text" id="intro" name="intro"> <br>
		</form>
	</div>
</body>
</html>