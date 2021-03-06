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
<link rel="stylesheet" href="css/projectWrite.css?ver=1.1.14" />
<link rel="stylesheet" href="css/PortfolioWriteNav.css" />
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
  
<link rel="stylesheet" type="text/css" href="slick/slick.css?ver=1.1.1"/>
<link rel="stylesheet" type="text/css" href="slick/slick-theme.css?ver=1.1.1"/>
<script type="text/javascript" src="slick/slick.min.js?ver=1"></script>
				  
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
	    
	    $("#lasttime").change(function(){
    		if($('#firsttime').val() > $('#lasttime').val()) {
    			$('#lasttime').val('');
    			alert('다시 입력해주십시오.');
    		}
    	});  
	    
	    $('.comple-img').slick();
		
	    slideIndex = 1;
	    
		$('.addimg').on('click', function() {
			slideIndex++;
			$('.comple-img').slick('slickAdd', '<input class="imgs" type="image" src = "img/create.png" name="pjimage" onclick = "b(event)" onchange="img()">');
		});
		
		$('.removeimg').on('click', function() {
			$('.comple-img').slick('slickRemove', slideIndex - 1);
			if(slideIndex !== 0) {
				slideIndex--;
			}
		});
	});
	
	

	
</script>

<script src="mainPage/ClientPro/DBjs.js"></script>
<script src="mainPage/ClientPro/imageFile.js"></script>
</head>

<body>	
<form action="mainPage/Pro/SavePro.jsp" method="post" name="form">
	<main> 
	<span class="anchor"> <a href="#projectOutline">Information</a>
		<a href="#goal">Goal/Scenario</a> <a href="#point">Point</a> <a
		href="#completeImg">Complete Image</a> <a href="#thoughts">Thoughts</a>
	</span>

	<div id="projectOutline" class="fadeinleft">
		<div id="outline_info" style="display: inline-block; width: 650px;">
			<div>
				<label>프로젝트 제목</label> 
				<input id="pjtitle" type='text' value="hello" name="pjtitle" placeholder="INSERT TITLE">
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
				<input id='etc' type='text' placeholder="INSERT ETC" name="etc">
			</div>
		</div>
		<div id="outline_img">
			<div>
	            <label>대표 이미지</label>
	        </div>
	        <div>
				<input type="image" src = "img/create.png" name="pjimage" onclick = "b(event)" onchange="img()">
			</div>
		</div>
		<div id="outline_expl" style="display: inline-block; width: 500px;">
			<div>
				<label>프로젝트 설명</label>
			</div>
			<div>
				<textarea id='explain' cols='80' rows='11' placeholder="INSERT EXPLAIN" name="explain"></textarea>
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
				<textarea id='scenario' cols='70' rows='11' placeholder="INSERT SCENARIO" name="scenario"></textarea>
			</div>
			
			<div class="sce-img">
			  <input type="image" src = "img/create.png" name="pjimage1" onclick = "b(event)" onchange="img()">
			  <input type="image" src = "img/create.png" name="pjimage2" onclick = "b(event)" onchange="img()">
			  <input type="image" src = "img/create.png" name="pjimage3" onclick = "b(event)" onchange="img()">
			</div>
		</div>
	</div>

	<div id="point" class = 'fadeinleft'>
		<div id="point_info">
			<div>
				<label>구현-핵심포인트</label>
			</div>
			<div class="point-img">
			  <input type="image" src = "img/create.png" name="pjimage4" onclick = "b(event)" onchange="img()">
			 </div>
			<div>
				<textarea id='pointexplain' cols='30' rows='28' name="pointexplain" placeholder="INSERT EXPLAIN"></textarea>
			</div>
		</div>
	</div>

	<div id="completeImg" class = 'fadeinleft'>
		<div id="img_info">
			<div>
				<label>완성이미지</label>
				<input type = 'button' value = '이미지 추가하기' class="addimg">
				<input type = 'button' value = '최근 이미지 삭제하기' class="removeimg">
			</div>
			<div class="comple-img">
			  <input class="imgs" type="image" src = "img/create.png" name="pjimage5" onclick = "b(event)" onchange="img()">
			</div>
		</div>
	</div>

	<div id="thoughts" class = 'fadeinleft'>
		<div id="thoughts_info">
			<div>
			<label>공부방향</label>
			</div>
			<div>
				<textarea id='studydir' cols='70' rows='7' name="studydir"></textarea>
			</div>
			<div>
				<label style="width:400px">어려웠던 점과 그에 따른 해결방안</label>
			</div>
			<div>
				<textarea id='diff' cols='70' rows='7' name="diff"></textarea>
			</div>
			<div>
				<label>총 소감</label>
			</div>
			<div>
				<textarea id='ending' cols='70' rows='7' name="ending"></textarea>
			</div>
		</div>
		
	</div>
	</main>
	<!-- <jsp:include page="portfolioWriteNav.jsp" flush="false" />-->
	
	<nav class="menu">
		<input type="checkbox" href="#" class="menu-open" 
			name="menu-open" id="menu-open" /> 
		<label class="menu-open-button" for="menu-open">
			<span class="lines line-1"></span>
			<span class="lines line-2"></span>
			<span class="lines line-3"></span>
		</label>
		<a class="menu-item green" onclick="document.form.submit();" title="저장"><i class="fas fa-save"></i></a>
		<!-- <a href="mainPage/Pro/SavePro.jsp" class="menu-item green" title="저장"><i class="fas fa-save"></i></a> -->
		<a href="makePofolForm.jsp" class="menu-item lightblue" title="포트폴리오로 만들기"> <i class="fas fa-file-pdf"></i></a>
		<a href="mainPage/Pro/deletePofolPro.jsp" class="menu-item red" title="삭제"><i class="far fa-trash-alt"></i></a> 
		<a href="mainPage/Pro/starPro.jsp" class="menu-item orange" title="즐겨찾기"> <i class="fa fa-star"></i></a> 
		<a href="mainPage/Pro/AddContentsPro.jsp" class="menu-item purple" title="내용추가하기"><i class="fas fa-plus"></i></a>
	</nav>
<%
	if((String)session.getAttribute("isMadeAlready") == "true") {
%>
		<jsp:include page="../Pro/portfolioDBPro.jsp"></jsp:include>

		<script>output();</script>
<%	}
%>
</form>
</body>
</html>