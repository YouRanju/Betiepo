<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/mypagecss.css?ver-1">
<script src="mainPage/ClientPro/imageFile.js"></script>
</head>
<body>
	<div id="mypagecontent">
		<h1>My Page</h1>
		<form action="member/Pro/profileSave.jsp" method="POST" name="profileForm">
			<div>
				<label for="pjimage">프로필 사진</label><br>
				<input type="image" src = "img/create.png" name="profile" onclick = "b(event)" onchange="img()"><br>
			</div>
			<div>
				<label for="nameK">이름</label><input type="text" id="nameK" name="nameK" placeholder="INSERT YOUR KOREAN NAME"> <br>
				<label for="nameE">영문이름</label><input type="text" id="nameE" name="nameE" placeholder="INSERT YOUR ENGLISH NAME"> <br>
				<label for="email">이메일 </label><input type="text" id="email" name="email" placeholder="INSERT EMAIL"> <br>
				<label for="pw">비밀번호 </label><input type="password" id="pw" name="pw" placeholder="INSERT PASSWORD"> <br>
				<label for="phone">전화번호</label> <input type="text" id="phone" name="phone" placeholder="INSERT PHONE NUMBER"> <br>
			    <label for="intro">포부 한마디</label> <input type="text" id="intro" name="intro" placeholder="INSERT ASPIRATION"> <br>
			    <span><input type="submit" value="수정"><input type="button" value="취소"></span>
			</div>
		</form>
	</div>
</body>
</html>