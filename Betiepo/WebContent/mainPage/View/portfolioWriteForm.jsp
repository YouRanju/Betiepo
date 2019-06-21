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
<link rel="stylesheet" href="css/reset.css" />
<link rel="stylesheet" href="css/projectWrite.css?ver=1.1" />
</head>
<body>
	<main>
		<span class="anchor">
			<a href="#projectOutline">Information</a>
			<a href="#goal">Goal/Scenario</a>
			<a href="#point">Point</a>
			<a href="#completeImg">Complete Image</a>
			<a href="#thoughts">Thoughts</a>
		</span>
		
		<div id="projectOutline">
			<h1>INFORMATION</h1>
			<div>
                 <label>프로젝트 제목</label>
                 <input id = "pjtitle" type = 'text'>
             </div>

             <div>
                 <label>프로젝트 장르</label>
                 <input id = 'g' type = 'text'>
             </div>
                                            
			<div>
				<label>진행기간</label>
				<input id = 'firsttime' type = 'date' placeholder=" ">
				~
				<input id = 'lasttime' type = 'date' placeholder=" ">
			</div>
			
			<div>
				<label>사용툴 / 사용언어</label>
				<input id = 'used' type = 'text'>
			</div>
			<div>
	            <label>담당 / 기여도</label>
	            <input id = 'team' type = 'text'>
	        </div>
	        <div>
	            <label>깃허브 주소</label>
	            <input id = 'team' type = 'text'>
	        </div>
	        <div>
	            <label>비고</label>
	            <input id = 'team' type = 'text'>
	        </div>
	        <div>
                <label>프로젝트 설명</label>
            </div>
            <div>
				<textarea id = 'explain' cols = '70' rows = '12'></textarea>
			</div>
		</div>
		
		<div id="goal">
			<h1>GOAL / SCENARIO</h1>
        	<div>
            	<label>제작목적</label>
            	<input id = "purpose" type = 'text'>
	        </div>
	        <div>
            	<label>목표사용자</label>
            	<input id = "purpose" type = 'text'>
	        </div>
	        <div>
            	<label>시나리오</label>
	        </div>
	        <div>
				<textarea id = 'explain' cols = '70' rows = '12'></textarea>
			</div>
		</div>
		
		<div id="point">
			<h1>POINT</h1>
			<div>
            	<label>핵심코드</label>
	        </div>
	        <div>
				<textarea id = 'explain' cols = '70' rows = '12'></textarea>
			</div>
		</div>
		
		<div id="completeImg">
			<h1>COMPLETE IMAGE</h1>
			<div>
            	<label>완성이미지</label>
	        </div>
		</div>
		
		<div id="thoughts">
			<h1>THOUGHTS</h1>
			<div>
            	<label>공부방향</label>
	        </div>
	        <div>
				<textarea id = 'explain' cols = '70' rows = '12'></textarea>
			</div>
			<div>
            	<label>어려웠던 점과 그에 따른 해결방안</label>
	        </div>
	        <div>
				<textarea id = 'explain' cols = '70' rows = '12'></textarea>
			</div>
			<div>
            	<label>총 소감</label>
	        </div>
	        <div>
				<textarea id = 'explain' cols = '70' rows = '12'></textarea>
			</div>
		</div>
	</main>       
	
	<jsp:include page="portfolioWriteNav.jsp" flush="false" />             
</body>
</html>