<%@page import="javax.mail.Address"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="util.Gmail"%>
<%@page import="java.util.Properties"%>
<%@page import="util.SHA256"%>
<%@page import="jsp.member.MemberDTO"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="jsp.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<head>
	<link rel="shortcut icon" href="../img/logo.png">
	<title>Betiepo 회원가입을 축하합니다.</title>
</head> 

<!-- DB 연동 -->
<%
 	request.setCharacterEncoding("utf-8");

	MemberDAO memberDAO = new MemberDAO();
	
 	String name = request.getParameter("name");
 	String email = request.getParameter("email");
 	String pwd = request.getParameter("pwd");
 	
 	boolean IsEmailNew = memberDAO.IsNewEmail(email);
 	PrintWriter script = response.getWriter();
 	if(!IsEmailNew){
 		script.println("<script>");
 		script.println("alert('이미 존재하는 이메일 입니다.');");
 		script.println("location.href='../View/signUp.jsp';");
 		script.println("</script>");
 		return;
 	}
 	
 	String host = "http://localhost:8080/Betiepo/member/View/";
 	String from = "eun01300714@gmail.com";
 	String to = memberDAO.getMemberEmail(name);
 	String subject = "회원가입을 위한 인증 메일입니다.";
 	String content = "다음 링크를 클릭하여 이메일 인증을 진행하세요." + 
 		"<a href='"+host+"email.jsp?code="+new SHA256().getSHA256(to) + "'>이메일 인증하기</a>";
 	
 	Properties p = new Properties();
 	// p.put("mail.smtp.user", from);
 	p.put("mail.smtp.host", "smtp.googlemail.com");
 	p.put("mail.smtp.port", "465");
 	p.put("mail.smtp.starttls.enable", "true");
 	p.put("mail.smtp.auth", "true");
 	p.put("mail.smtp.debug", "true");
 	p.put("mail.smtp.socketFactory.port", "465");
 	p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
 	p.put("mail.smtp.socketFactory.fallback", "false");
 	
 	try {
 		Authenticator auth = new Gmail();
 		Session ses = Session.getInstance(p, auth);
 		ses.setDebug(true);
 		MimeMessage msg = new MimeMessage(ses);
 		msg.setSubject(subject);
 		Address fromAddr = new InternetAddress(from);
 		msg.setFrom(fromAddr);
 		Address toAddr = new InternetAddress(to);
 		msg.addRecipient(Message.RecipientType.TO, toAddr);
 		msg.setContent(content, "text/html;charset=UTF8");
 		Transport.send(msg);
 		
 	} catch (Exception e) {
 		script.println("<script>");
 		script.println("alert('오류가 발생하였습니다.');");
 		script.println("history.back();");
 		script.println("</script>");
 		script.close();
 		
 		return;
 	}
 	
 	// int result = memberDAO.join(MemberDTO(name, email, pwd));
 	// int result = memberDAO.join(name, email, pwd);
 	/*
 	if(result == -1) {	
 		script.println("<script>");
 		script.println("alert('이미 존재하는 이메일 입니다.');");
 		script.println("location.href='../View/signUp.jsp';");
 		script.println("</script>");
 		script.close();
 	} else {
 		session.setAttribute("name", name);
 		script.println("<script>");
 		script.println("alert('회원가입에 성공하셨습니다!');");
 		script.println("location.href='../View/login.jsp';");
 		script.println("</script>");
 	}*/
 %>
<body>
	<form action="../View/login.jsp" method="post">
		<input type="submit" value="로그인화면으로">
	</form>
</body>