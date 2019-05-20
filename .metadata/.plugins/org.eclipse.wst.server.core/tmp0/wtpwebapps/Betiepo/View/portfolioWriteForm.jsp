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
</body>
</html>