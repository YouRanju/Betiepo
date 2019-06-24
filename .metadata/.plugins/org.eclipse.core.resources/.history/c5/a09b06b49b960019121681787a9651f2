<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/reset.css?ver=1" />
<link rel="stylesheet" href="css/listView.css?ver=1" />
<script src="portfolioList/View/itemadd.js?ver=1"></script>
</head>
<body>	
	<section class="center">
		<div id="items">
			<div class="item" style="display: block">
				<div class='project'>
					<a href="portfolioList/Pro/ListPro.jsp"><img class="img" src='img/logo.png'></a>
					<div class='explanation'>
						<a class='itemlink' href="portfolioList/Pro/ListPro.jsp" id="itemlink">BETIEPO</a>
						<p class="itemexplain">BE TIE PORTFOLIO</p>
						<hr>
						<div id="date" class='date'>2019-05-23</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	
	<script>init();</script>
	<%	/* 
		DB연동
		ex) 내용을 가져오시오...
		//반복횟수 지정하기 위해
		int cnt = SELECT COUNT(*) FROM userPortfolioList WHERE userEmail = session.~~~;
		
		//여긴 반복문 안에 넣을거		
		String name = SELECT portfolioName FROM userPortfolioList
						WHERE userEmail = session.~~~ ORDER BY portfolioMadeDate;
		String date = SELECT portfolioMadeDate FROM userPortfolioList 
						WHERE userEmail = session.~~~ AND portfolioName=name(변수);
		String explain = SELECT portfolioExplain FROM userPortfolioList
						WHERE userEmail = session.~~~ AND portfolioName=name(변수);
		String img = SELECT portfolioImg FROM userPortfolioList
						WHERE userEmail = session.~~~ AND portfolioName=name(변수);
		*/
		
		int cnt = 4;
		for(int i = 0; i < cnt; i++) 
		{
	%>		
			<script>copy('Betiepo','TEST', '1999년 10월 20일', 'img/logo.png');</script>
			<!-- <script>copy(name,explain,date, img);</script> -->
	<%	}
	%>
</body>
</html>