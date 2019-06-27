<%@page import="java.io.PrintWriter"%>
<%@page import="project.Project"%>
<%@page import="project.ProjectDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- DB연동 필요 -->

<script>
console.log("다녀감");
</script>
<%
	String userEmail = (String)session.getAttribute("userEmail");
	String title = request.getParameter("pjtitle");
	String genre = request.getParameter("genre");
	String startDate = request.getParameter("firsttime").equals("") ? null : request.getParameter("firsttime");
	String endDate = request.getParameter("lasttime").equals("") ? null : request.getParameter("lasttime");
	String language = request.getParameter("used");
	String charge = request.getParameter("team");
	String github = request.getParameter("git");
	String memo = request.getParameter("etc");
	String explanation = request.getParameter("explain");
	String image = request.getParameter("pjimage");
	String purpose = request.getParameter("purpose");
	String target = request.getParameter("target");
	String scenario = request.getParameter("scenario");
	String image1 = request.getParameter("pjimage1");
	String image2 = request.getParameter("pjimage2");
	String image3 = request.getParameter("pjimage3");
	String implementImg = request.getParameter("pjimage4");
	String implementExp = request.getParameter("pointexplain");
	String completeImg = request.getParameter("pjimage5");
	String study = request.getParameter("studydir");
	String problem = request.getParameter("diff");
	String realization = request.getParameter("ending");
	
	Project project = new Project(userEmail, title, genre, startDate, endDate, language
			, charge, github, memo, explanation, image, purpose, target, scenario
			, image1, image2, image3, implementImg, implementExp, completeImg, study
			, problem, realization);
	
	ProjectDAO projectDAO = new ProjectDAO();
	int result = projectDAO.write(project);
	
	PrintWriter script = response.getWriter();
	script.println("<script>");
	if(result == -1) script.println("alert('DB가 망했습니다.')");
	else script.println("alert('저장 되었습니다.')");
	script.println("</script>");
	
	// session.setAttribute("isMadeAlready", "true");
	//response.sendRedirect("../../portfolioForm.jsp");
%>