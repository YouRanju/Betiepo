<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">

<!-- top -->
<link rel="stylesheet" href="css/form_top.css" />
<link rel="stylesheet" href="css/user.css" />

</head>
<body>
	<header class="header">
		<a class="title" href='main.jsp'>BETIEPO</a>
		<div class="User">
			<details>
				<summary>
					<i class="fas fa-user-circle icon"></i>
					<%= session.getAttribute("isLogin") %>&nbsp;&nbsp; <i
						class="fas fa-chevron-down"></i>
				</summary>
				<ul class='userSub'>
					<li><a>내 프로필</a></li>
					<li><a>내 프로젝트</a></li>
					<li><a href="member/Pro/logoutProc.jsp">로그아웃</a></li>
				</ul>
			</details>
		</div>
	</header>
</body>
</html>