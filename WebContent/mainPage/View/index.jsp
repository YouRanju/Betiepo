<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1.0">

<link rel="stylesheet" href="css/reset.css?ver=1" />
<link rel="stylesheet" href="css/formain.css?ver=1.2.1" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>

<script src="mainPage/ClientPro/layerPopup.js"></script>
<script src="mainPage/ClientPro/imageFile.js"></script>
</head>
<body>
	<main class="cont">
	<section class="maintitle">
		<div>
			<h1>포트폴리오 목록</h1>
			<button class="new" onclick="layerpop()">
				<i class="fas fa-plus"></i>새로 만들기
			</button>
			<form action="portfolioList/Pro/ListSearchPro.jsp">
				<input class="search" type="text" placeholder="검색" name="searchName">
				<button class="button">
					<i class="fas fa-search"></i>
				</button>
			</form>
		</div>
		<hr class="mainhr">
	</section>

	<jsp:include page="../../portfolioList/View/IndexView.jsp" flush="false" /> 
	<jsp:include page="../../portfolioList/View/ListView.jsp" flush="false" />

	<div class="layer-popup">
		<div class="popBg"></div>
		<div class="pop-layer">
			<div class="pop-container">
				<div class="pop-conts">
					<div class="CreateCont">
						<div class="Create">무슨내용을 넣을까요?<br></div>	
						<div style="margin-bottom: 200px">
							<div class="lists">
								<b>카테고리</b><br>
								<select size="9">
									<option>프로젝트</option>
									<option>외부활동</option>
								</select>
							</div>
							<div class="infomationNew">
								<b>프로젝트 이름</b>
								<input type="text"><br>
								<b>대표이미지</b>
								<input class='image' type="image" src = "img/create.png" name="pjimage" onclick = "b(event)" onchange="img()">
							</div>
						</div>
					</div>

					<div class="btn">
						<a class="createBtn" href="mainPage/ClientPro/ListProCre.jsp">생성하기</a>
						<a class="close" onclick="pop_close()">닫기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</main>
</body>
</html>