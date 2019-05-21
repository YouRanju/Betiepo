<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1.0">

<link rel="stylesheet" href="css/formain.css" />

</head>
<body>	
	<main>
	<section class="maintitle">
		<table class="heading">
			<tr>
				<td width="60%"><h1>포트폴리오 목록</h1></td>
				<td class="forsearch">
					<form action="portfolioList/Pro/ListPro.jsp">
						<input class="search" type="text" placeholder="검색" name="searchName"> 
						<input class="searchbutton" type="submit" value="검색">
					</form>
				</td>
			</tr>
		</table>	
		<hr class="mainhr">
	</section>
	
	<jsp:include page="../../portfolioList/View/ListView.jsp" flush="false" />
	
	<section class="left">
		<div class="leftdiv">
			<i class="fas fa-chevron-left"></i>
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