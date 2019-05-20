<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Betiepo</title>

<link rel="stylesheet" href="../css/reset.css" />
<link rel="stylesheet" href="../css/form_top.css" />
<link rel="stylesheet" href="../css/user.css" />

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">

</head>
<body>
	<header class="header">
		<a class="title" href='index.jsp'>BETIEPO</a>
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
</body>
</html>