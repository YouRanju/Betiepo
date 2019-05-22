<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1.0">

<link rel="stylesheet" href="css/formain.css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
	crossorigin="anonymous">
	
</head>
<body>
	<main class = "cont">
	<section class="maintitle">
		<table class="heading">
			<tr>
				<td width="50%"><h1>포트폴리오 목록</h1></td>
				<td class="forsearch">
					<form action="mainPage/View/CreatePortfolio.jsp" method="post">
						<button class="new"><i class="fas fa-plus"></i> 새로 만들기</button>
					</form>
				</td>
				<td class="forsearch">
					<form action="portfolioList/Pro/ListPro.jsp">
						<input class="search" type="text" placeholder="검색"
							name="searchName"> 
						<button class="button"><i class="fas fa-search"></i></button>
					</form>
				</td>
			</tr>
		</table>
		<hr class="mainhr">
	</section>

	<section class="left">
		<div class="leftdiv">
			<div class="index">프로젝트</div>
			<div class="index">활동</div>
		</div>
	</section>
	<jsp:include page="../../portfolioList/View/IndexView.jsp" flush="false" />
	<jsp:include page="../../portfolioList/View/ListView.jsp" flush="false" />

	<!-- <section class="left">
		<div class="leftdiv">
			<i class="fas fa-chevron-left"></i>
		</div>
	</section> -->
	
	

	<section class="right">
		<div class="rightdiv">
			<i class="fas fa-chevron-right"></i>
		</div>
	</section>
	</main>
</body>
</html>