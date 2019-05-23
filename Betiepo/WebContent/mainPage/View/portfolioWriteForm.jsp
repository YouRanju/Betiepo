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
</head>
<body>
	<jsp:include page="portfolioWriteNav.jsp" flush="false" />
	 <section id = 'project'>
            <main>
                <div class = 'list'>
                    <ul>
                        <li><a href='#'>프로젝트 설명</a></li>
                        <li><a href='main.1.html' onclick = 'next(event)'>시나리오</a></li>
                        <li><a href='main.2.html' onclick = 'next(event)'>디자인 컨셉</a></li>
                        <li><a href='main.3.html' onclick = 'next(event)'>중요 포인트</a></li>
                        <li><a href='main.4.html' onclick = 'next(event)'>실행화면 / 완성 작품</a></li>
                        <li><a href='main.5.html' onclick = 'next(event)'>소감</a></li>
                    </ul>
                </div>
                <div class = 'container'>
                    <div class = 'content'>
                        <div class = 'first'>
                            <div class = 'basic'>
                                <div>
                                    <label>프로젝트 제목</label>
                                    <input id = "pjtitle" type = 'text' placeholder="ex) Hello World!">
                                </div>
                                
                                <p>프로젝트를 한 번에 이해할 수 있는 특이한 이름으로 지어봐요!</p>

                                <div>
                                    <label>프로젝트 장르</label>
                                    <select id = "gselect" required>
                                        <option selected disabled>선택</option>
                                        <option>프로그래밍</option>
                                        <option>디자인</option>
                                    </select>
                                    <input id = 'g' type = 'text' placeholder="ex) 아케이드 게임 / 쇼핑 앱">
                                </div>

                                <p>무엇이든 상관없어요!</p>                                

                                <div>
                                    <label>제작목적</label>
                                    <input id = "purpose" type = 'text' placeholder="ex) printf()의 사용법을 알기 위해">
                                </div>

                                <p>무엇을 위해 만들었나요? 한 번 생각해봅시다.</p>

                                <div>
                                    <label>제작배경</label>
                                    <input id = "setting" type = 'text' placeholder="ex) C언어의 기초 printf()를 배우던 도중">
                                </div>

                                <p>당신에게 무엇이 프로젝트를 만들게 했나요?</p>

                                <div>
                                    <label>제작기간</label>
                                    <input id = 'firsttime' type = 'date' placeholder=" ">
                                    ~
                                    <input id = 'lasttime' type = 'date' placeholder=" ">
                                </div>

                                <p>오래 걸렸든 적게 걸렸든 상관없어요. 당신의 노력이 중요합니다.</p>

                                <div>
                                    <label>사용툴 / 사용언어</label>
                                    <input id = 'used' type = 'text' placeholder="ex) C언어">
                                </div>

                                <p>무엇을 이용했나요? 노력하신만큼 실력이 늘어날거에요!</p>

                                <div>
                                    <label>팀원</label>
                                    <input id = 'team' type = 'text' placeholder="ex) 1701 가미림, 1711 이마림">
                                </div>

                                <p>누구와 함께 했나요? 팀워크를 기르는 것도 중요해요!</p>

                                <div>
                                    <label>나의 담당 업무</label>
                                    <input id = 'myinteam' type = 'text' placeholder="ex) C언어 프로젝트 기획서 작성">
                                </div>

                                <p>무엇을 담당하셨나요? 자기가 맡은 업무는 최선을 다하셨나요?</p>

                            </div>
                            
                            <div style="margin-left:500px">
                                <div>
                                    <label>프로젝트 주제</label>
                                    <input id = 'subject' type = 'text' placeholder="ex) printf()를 공부하자!">
                                </div>
    
                                <label style="width : 500px; margin: 0px; padding: 0;"><p >주제는 중요합니다. 대표적인 문구 하나 적어볼까요?</p></label>
    
                                <div>
                                    <label>프로젝트 설명</label>
                                    <label style="width : 400px"><p>당신의 프로젝트가 궁금해요!</p></label>
                                </div>
                                <div>
                                    <textarea id = 'explain' cols = '70' rows = '12' placeholder="ex) printf()를 활용한 프로그램입니다."></textarea>
                                </div>
                                <div style = "float:left">
                                    <label>대표 이미지</label>
                                </div>
                                <div>
                                    <input id = 'imge' type = "image" src = "../img/create.png" style = "width:300px; margin-left:30px" onclick = "b(event)" onchange="img()">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </section>
</body>
</html>