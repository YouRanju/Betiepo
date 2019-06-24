<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1.0">

<link rel="shortcut icon" href="img/logo.png">
<title>Betiepo_Create</title>
<link rel="stylesheet" href="css/reset.css?ver=1" />
<link rel="stylesheet" href="css/projectWrite.css?ver=1.1.5" />
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
  
<script>
	$(document).ready(function() {
		$('#projectOutline').animate({'opacity':'1','margin-left':'0px'},1000);
	    $(window).scroll( function(){
	        $('.fadeinleft').each( function(i){
	            
	            var bottom_of_element = $(this).offset().top + $(this).outerHeight();
	            var bottom_of_window = $(window).scrollTop() + $(window).height();
	            
	            if( bottom_of_window > bottom_of_element ){
	                $(this).animate({'opacity':'1','margin-left':'0px'},1000);
	            }
	            
	        }); 
	    });
	});


</script>
</head>
<body>
	<main> 
	<span class="anchor"> <a href="#projectOutline">Information</a>
		<a href="#goal">Goal/Scenario</a> <a href="#point">Point</a> <a
		href="#completeImg">Complete Image</a> <a href="#thoughts">Thoughts</a>
	</span>
	<form action="portfolioWriteFormProc.jsp" method="post">
	<div id="projectOutline" class="fadeinleft">
		<div id="outline_info" style="display: inline-block; width: 650px;">
		
			<div>
				<label>프로젝트 제목</label> 
				<% String projectName = request.getParameter("projectName"); %>
				<input id="pjtitle" type='text' name="pjtitle" value="<%= projectName %>" placeholder="INSERT TITLE">
			</div>
			<div>
				<label>프로젝트 장르</label> 
				<input id='genre' type='text' name="genre" placeholder="INSERT GENRE">
			</div>
			<div>
				<label>진행기간</label> 
				<input id='firsttime' type='date' placeholder="START" name="firsttime"> ~ 
				<input id='lasttime' type='date' placeholder="END" name="lasttime">
			</div>
			<div>
				<label>사용툴 / 사용언어</label> 
				<input id='used' type='text' placeholder="INSERT LANGUAGE / TOOL" name="used">
			</div>
			<div>
				<label>담당 / 기여도</label> 
				<input id='team' type='text' placeholder="INSERT MY ROLE" name="team">
			</div>
			<div>
				<label>깃허브 주소</label> 
				<input id='git' type='text' placeholder="INSERT GITHUB URL" name="git">
			</div>
			<div>
				<label>비고</label> 
				<input id='team' type='text' placeholder="INSERT ETC" name="etc">
			</div>
		</div>
		<div id="outline_img">
			<div>
	            <label>대표 이미지</label>
	        </div>
	        <div>
				<input type="image" placeholder="INSERT IMAGE" name="pjimage">
			</div>
		</div>
		<div id="outline_expl" style="display: inline-block; width: 500px;">
			<div>
				<label>프로젝트 설명</label>
			</div>
			<div>
				<textarea id='explain' cols='80' rows='15' placeholder="INSERT EXPLAIN" name="explain"></textarea>
			</div>
		</div>
	</div>

	<div id="goal" class = 'fadeinleft'>
		<div id="goal_info">
			<div>
				<label>제작목적</label> 
				<input id="purpose" type='text' placeholder="INSERT PURPOSE" name="purpose">
			</div>
			<div>
				<label>목표사용자</label> 
				<input id="target" type='text' placeholder="INSERT TARGET" name="target">
			</div>
			<div>
				<label>시나리오</label>
			</div>
			<div>
				<textarea id='scenario' cols='70' rows='12' placeholder="INSERT SCENARIO" name="scenario"></textarea>
			</div>
		</div>
	</div>

	<div id="point" class = 'fadeinleft'>
		<div id="point_info">
			<div>
				<label>핵심포인트</label>
			</div>
			<div>
				<textarea id='pointexplain' cols='70' rows='12' name="pointexplain"></textarea>
			</div>
		</div>
	</div>

	<div id="completeImg" class = 'fadeinleft'>
		<div id="img_info">
			<div>
				<label>완성이미지</label>
			</div>
		</div>
	</div>
	
	<div id="thoughts" class = 'fadeinleft'>
		<div id="thoughts_info">
			<div>
			<label>공부방향</label>
			</div>
			<div>
				<textarea id='studydir' cols='70' rows='10' name="studydir"></textarea>
			</div>
			<div>
				<label style="width:400px">어려웠던 점과 그에 따른 해결방안</label>
			</div>
			<div>
				<textarea id='diff' cols='70' rows='10' name="diff"></textarea>
			</div>
			<div>
				<label>총 소감</label>
			</div>
			<div>
				<textarea id='ending' cols='70' rows='10' name="ending"></textarea>
			</div>
		</div>
		
	</div>
	</form>
	</main>

	<jsp:include page="portfolioWriteNav.jsp" flush="false" />
</body>
</html>