<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1.0">

<link rel="stylesheet" href="css/reset.css" />
<link rel="stylesheet" href="css/formain.css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
	crossorigin="anonymous">
	
</head>
<body>
	<main class = "cont">
	<section class="maintitle">
		<div>
			<h1>포트폴리오 목록</h1>
			<form action="mainPage/View/CreatePortfolio.jsp" method="post">
				<button class="new"><i class="fas fa-plus"></i>새로 만들기</button>
			</form>
			<form action="portfolioList/Pro/ListPro.jsp">
				<input class="search" type="text" placeholder="검색"
					name="searchName"> 
				<button class="button"><i class="fas fa-search"></i></button>
			</form>
		</div>
		<hr class="mainhr">
	</section>
	
	<jsp:include page="../../portfolioList/View/IndexView.jsp" flush="false" />
	<jsp:include page="../../portfolioList/View/ListView.jsp" flush="false" />

	</main>
</body>
</html>