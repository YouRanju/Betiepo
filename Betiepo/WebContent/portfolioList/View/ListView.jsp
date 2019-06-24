<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/reset.css?ver=1" />
<link rel="stylesheet" href="css/listView.css" />
<script src="portfolioList/View/itemadd.js"></script>
</head>
<body>
	<section class="center">
		<div id="items">
		<%
			/* 
			DB연동
			ex)
			int cnt = SELECT COUNT(*) FROM userPortfolioList;
			*/
			int cnt = 4;
			for(int i = 0; i < cnt; i++) {
				//
			}
		%>
			<div class="item" style="display: block">
				<div class='project'>
					<a href="#"><img src='img/logo.png'></a>
					<div class='explanation'>
						<a class='itemlink' href="#" id="itemlink">BETIEPO</a>
						<p id="itemexplain">BE TIE PORTFOLIO</p>
						<hr>
						<div id="date" class='date'>2019-05-23</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>