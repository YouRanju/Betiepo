<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1.0">

<title>Betiepo</title>

<link rel="shortcut icon" href="../img/logo.png">

<link rel="stylesheet" href="../css/reset.css" />
<link rel="stylesheet" href="../css/all.css" />

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">

</head>
<body>
	<header class="header">
		<a class="title" href='../html/main.html'>BETIEPO</a>
		<div class="User">
			<details>
				<summary>
					<i class="fas fa-user-circle icon"></i> UserName&nbsp;&nbsp;<i
						class="fas fa-chevron-down"></i>
				</summary>
				<details-menu>
				<ul class='userSub'>
					<li><a>내 프로필</a></li>
					<li><a>내 프로젝트</a></li>
					<li><a href="../html/index.html">로그아웃</a></li>
					<!-- 나중에 링크수정 -->
				</ul>
				</details-menu>
			</details>
		</div>
	</header>

	<nav>
		<ul class="nav">
			<li><input type="radio" name="nav" id="saveBtn"> <label
				for="saveBtn" class="labelBtn">저장</label>
				<ul class="saveSubmenu">
					<li><a href="#">저장하기</a></li>
					<li><a href="#">사본저장하기</a></li>

				</ul></li>
			<li><input type="radio" name="nav" id="pdfBtn"> <label
				for="pdfBtn" class="labelBtn">PDF</label>
				<ul class="pdfSubmenu">
					<li><a href="#">저장하기</a></li>
					<li><a href="#">사본저장하기</a></li>
				</ul></li>
			<li><input type="radio" name="nav" id="closeBtn"> <label
				for="closeBtn" class="labelBtn">창닫기</label></li>
		</ul>
	</nav>

	<footer class="footer">
		<hr class="footerhr">
		<div>&copy; TEAM BETIEPO 2019</div>
	</footer>
</body>
</html>