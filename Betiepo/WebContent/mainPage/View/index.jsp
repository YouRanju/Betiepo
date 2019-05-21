<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1.0">

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">

</head>
<body>
	<main>
	<section class="maintitle">
		<table class="heading">
			<tr>
				<td><h1>포트폴리오 목록</h1></td>
				<td class="forsearch"><input class="search" type="text"
					placeholder="검색"> <input class="searchbutton" type="submit"
					value="검색"></td>
			</tr>
		</table>
		<hr class="mainhr">
	</section>
	<section class="left">
		<div class="leftdiv">
			<i class="fas fa-chevron-left"></i>
		</div>
	</section>
	<section class="center">
		<div class="items">
			<div class="create">
				<div class='project'>
					<a href="portfolioFormProc.jsp"><img src='img/create.png'></a>
					<div class='explanation'>
						<a class='itemlink' href="portfolioFormProc.jsp">새로만들기</a>
						<p>새로운 포트폴리오를 생성합니다.</p>
						<hr>
						<div id="date" class='date'>　</div>
					</div>
				</div>
			</div>
			<div class="item" style="display: block">
				<div class='project'>
					<a href="#"><img src='img/logo.png'></a>
					<div class='explanation'>
						<a class='itemlink' href="#">NewProject</a>
						<p>NewProject</p>
						<hr>
						<div id="date" class='date'>2019-04-19</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="right">
		<div class="rightdiv">
			<i class="fas fa-chevron-right"></i>
		</div>
	</section>
	</main>
</body>
</html>