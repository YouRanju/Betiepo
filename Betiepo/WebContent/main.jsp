<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	//session.setMaxInactiveInterval(100); 
	
	//로그인 X
	if(session.getAttribute("isLogin") == null) {
		response.sendRedirect("member/View/login.jsp");
	}
	//로그인 O
	else {
%>	
	<jsp:forward page="template/template.jsp">
		<jsp:param name="CONTENTPAGE" value="../mainPage/View/index.jsp"/>
	</jsp:forward>		
<%	}
	
%>