<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- DB 연동 하세요 -->

<%
	request.setCharacterEncoding("utf-8");
	
	String email = request.getParameter("email");
	String pw = request.getParameter("pw");
	
	/* 
	//DB 연동하는 곳 
	ex)
	SELECT * FROM usertbl WHERE id = email(이건 변수);
	    ==> 있으면 밑으로
		==> 없으면
			out.println("<script>alert("존재하지 않는 회원입니다. 회원가입해주십시오."); history(-1);</script>");
	SELECT * FROM usertbl WHERE id = email(이건 변수) AND pw = pw(이건 변수);
		==> 있으면 밑으로
		==> 없으면
			out.println("<script>alert("비밀번호를 잘못입력하셨습니다."); history(-1);</script>");
	
	=============== 이 밑은 로그인이 성공할 경우만 넘어가게 ====================	
	*/
	
	if(email != null && pw != null) {
		session.setAttribute("isLogin", email); /* 이거 이메일이 아니고 DB에 저장된 이름으로 바꿀거임 */
		session.setAttribute("LoginEmail", email);
	}
	
	response.sendRedirect("../../main.jsp");
%>
	